require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

class SemanticRender < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet

  def image(link, title, alt)
    "<div class=\"ui center aligned segment\">
      <div class=\"ui rounded image\">
        <img src=\"#{link}\" alt=\"#{alt}\" title=\"#{title}\">
      </div>
      #{title ? image_title(title) : ''}
    </div>"
  end

  def image_title(title)
    "<div class='ui divider'></div>
    <div class=\"content\">
        <h5 class=\"ui header\">#{title}</h5>
    </div>"  
  end


  def header(text, header_level)
    unless @header_list
      @header_list = []
    end

    fragment = text.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    @header_list.push([header_level, text, fragment])
    "<h#{header_level} class='ui header' id=\"#{fragment}\">
      #{text}
    </h#{header_level}>"
  end

  def hrule()
    "<div class='ui divider'></div>"
  end

  def list(contents, list_type)
    "<div class=\"ui #{list_type == :unordered ? 'bulleted' : 'ordered'} list\">
      #{contents}
    </div>"
  end

  def list_item(text, _list_type)
    "<div class=\"item\">#{text}</div>"
  end

  def block_quote(quote)
    "<div class=\"ui floating compact message\">#{quote}</div>"
  end

  def block_code(code, language)
    "<div class=\"ui black inverted highlight segment\">
      <pre>
        <code>
          #{Rouge.highlight(code, language || 'text', 'html')}
        </code>
      </pre>
    </div>"
  end

  def doc_footer()
    if @header_list.count.zero?
      nil
    else
      table_of_contents
    end
  end

  def table_of_contents()
    "<div class=\"ui left rail\" style=\"width:300px\">
      <div class=\"ui sticky\">
        <div class=\"ui segment\">
          <h3 class=\"ui header\">Table of contents</h3>
          <div class=\"ui list\">
            #{generate_toc_list}
          </div>
        </div>
      </div>
    </div>"
  end

  def generate_toc_tree(h_list)
    lvl, text, link = h_list.shift
    tree = [[text, link, []]]
    while h_list.count > 0 && h_list[0][0] >= lvl
      if h_list[0][0] == lvl
        lvl, text, link = h_list.shift
        tree.push([text, link, []])
      else
        tree[-1][2] = generate_toc_tree(h_list)
      end
    end
    tree
  end

  def build_toc_from_tree(tree)
    toc = ''
    tree.each do |text, link, children|
      toc +=
        "<div class=\"item\">
          <a href=\"\##{link}\">#{text}</a>
          #{children.count.zero? ? '' : 
          "<div class=\"list\">#{build_toc_from_tree(children)}</div>"}
        </div>"
    end
    toc
  end

  def generate_toc_list()
    tree = generate_toc_tree(@header_list)
    build_toc_from_tree(tree)
  end
end

class Jekyll::Converters::Markdown::SemanticRender
  def initialize(config)
    @config = config
    options = {
      strikethrough: true,
      no_intra_emphasis: true,
      tables: true,
      space_after_headers: true,
      underline: true,
      footnotes: true,
      fenced_code_blocks: true
    }
    @renderer = Redcarpet::Markdown.new(SemanticRender, options)
  end

  def convert(content)
    @renderer.render(content)
  end
end
