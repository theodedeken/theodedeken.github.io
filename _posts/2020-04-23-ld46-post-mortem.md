---
layout: post
title: "Ludum Dare 46: Post Mortem"
author: Theo Dedeken
project: morituri-combonaturi
thumb: /assets/img/projects/morituri-combonaturi.jpg
header: /assets/img/blog/ld46-post-mortem/header.jpg
permalink: /blog/2020/ld46-post-mortem
tags: 
    - game development
    - post mortem
    - game jam
    - ludum dare
    - 48h
excerpt: |-
    Last weekend I participated in the 46th edition of Ludum Dare.
    This is my post mortem on the things that went right and mostly wrong during the 48 hours of development.
---
Last weekend I participated in the 46th edition of [Ludum Dare](https://ldjam.com/), a game jam where you get 48 hours to create a game from scratch (using tools and engines is allowed).
I had previously participated in other editions with my games [Traffic Troubles](/projects/traffic-troubles) and [Sprout](/projects/sprout).
And just like those entries I was again going to implement my game using the [Phaser game engine](https://phaser.io/).
This is my post mortem on the things that went right and mostly wrong during the 48 hours of development.

## Saturday
The theme, **Keep It Alive**, was announced at 3 AM in my local time, so instead of staying up until then I went for an early sleep and got up quite early on Saturday morning.

### Morning - 43h left
Most of my Saturday morning was spent brainstorming game ideas.
Some of my early ideas were:

* Nature themed, keeping plants or flowers alive.
* Air tower simulator, keeping passengers alive guiding planes to runways.
* Keep a village alive, defending from invaders/monsters.

In the end the idea of keeping a combo alive came to me.
Inspired by old the old Flash games [Epic Combo](https://armorgames.com/play/6677/epic-combo) and [Epic Combo Redux](https://armorgames.com/play/13256/epic-combo-redux), the idea of making a game where the aim is to create a bigger and bigger combo really sounded great. 
Now I just needed to find the right setting and I did: **Gladiators in an arena**. 

At this point I still was thinking of letting the player control a gladiator (or executioner) in the arena going around hitting enemies to create a big combo.
This evolved over the day to creating combos by launching a gladiator into an arena filled with objects and other gladiators to interact with.

### Afternoon - 38h left
Now with my idea and theme set I started exploring the technical side of things.
I quickly set up some colliding circles using the arcade physics engine and got things bouncing off eachother.
Then I ran into a limitation of the arcade engine, it only supports rectangular and circular colliders.
But for my arena to work I had to figure out a way to get the gladiators to bounce of the insides of an ellips.

So I started to research some of the properties of an ellips and quickly found a way to calculate the two focal points of an ellips of any size.
These focal points are important for the collision as another property of an ellips is that the tangent line of a point on the ellips is the outer bisector of the angle formed by the point and the two focal points.
This tangent determines the direction an object will bounce off when it collides with the ellips. 
Now I just needed to do some vector math to calculate the collision and reflection vector and after some debugging I had working elliptical collision!
However, most of my afternoon was gone.

![elliptical collision](/assets/img/blog/ld46-post-mortem/screenshot-0.jpg "Just got elliptical collision working")

### Evening - 33h left
In the evening I started on blocking the game out using circles and rectangles.
Afterwards I got the launch mechanic to work.
Towards the end of my day I noticed that Phaser 3 does not have a built in UI system anymore, I should have researched this more beforehand.
I could not really find a quick library to fit in my existing project so I just pulled the trigger and built something really simple just to cover my needs for the jam.
Then I went to sleep.

![blocked out game](/assets/img/blog/ld46-post-mortem/screenshot-2.jpg "Blocked out the game using rectangles and circles")

## Sunday
A new day, over halfway, with not much of a game yet.
I really had to step up to make something finished out of what I had.

### Morning - 19h left
Now that I had a basic UI system I drew up a state diagram on how the player could move through the game and started on implementing it.
The end result would have two screens an arena screen and an upgrade screen.
I added buttons to move back and forth and added UI for the different purchases of the upgrade screen.

Then I took a break from coding and created the first art of the game, the gladiator sprite.
I was thinking of doing vector graphics for the game instead of my usual pixel art.
But it had been years since I did any of that, so I still had to install software.
I checked out [Inkscape](https://inkscape.org/), but got overwhelmed by its complexity and searched for a simpler alternative.
I ended up with [Vectr](https://vectr.com/), a very basic drawing tool but ideal to learn quickly and powerful enough to create decent art.

### Afternoon - 14h left 

I added my gladiator sprite and moved on to implement the placing logic.
I needed the player to be able to buy placeables from the upgrade screen and to put them into the arena.
Then I also needed to save the state of the arena so that the placeables were kept inbetween rounds.
Simultaneously I added the concept of a *round*, which would last until the combo timed out.
Naturally I added the combo mechanic too and a basic gold mechanic which would add gold based on your previous combo.

At the end I could make the placeables have a certain cost to them.
This I implemented using exponential functions as the more you buy the easier it would be to generate gold.
I punched in some numbers which seemed reasonable and left it.

### Evening - 9h left
Then it was really necessary to start making art, I still only had the gladiator sprite so I needed a bunch more to make my game look polished.
I made all the sprites from placeables to arena to UI in one big go.
I also made the sound effects.
This time I went for recorded sounds instead of generating them with [bfxr](https://www.bfxr.net/).
I quickly recorded some effects using my voice and shitty laptop microphone in [Audacity](https://www.audacityteam.org/), threw some filters over it (I have no idea how to do any of this sound stuff) until they sounded ok and cut them out.
Now time was really ticking, I added all art and sound to the game.

### Night - 4h left
I needed to make choices, my initial plan was to have multiple placeables and upgrades to be bought in the upgrade screen.
But now only the gladiator placeable was implemented.
I guessed that I would not have the time to implement the behaviors of the other placeables and set out to at least implement some basic things to be upgraded.
These upgrades were just changing a single value in the code so they were fairly easy to add.
For their cost I also just put some values into my exponential cost function without thinking too much about it.

At the end of this I just had less than two hours left before the deadline so I just polished the code and fixed bugs were I could.

Now for submission hour, I published my game on Github pages for the first time (play it [here](http://www.theodedeken.xyz/morituri-combonaturi/)).
Luckily I had been playing around with Github actions the last few weeks so I got a deploy action set up in little time.
Then I just had to add my entry on the website and that was it for this event.
Now off to sleep and back tomorrow to start playing and rating games.

## Conclusion
When thinking about my run this year there are some obvious things I could have done better.

Firstly I could have prepared way more.
Now I just had the idea of what game engine to use but little to no idea about all the rest.
I could have done some tryouts of art and sound software, so i would not have had to spend time learning these things during the event.

Secondly I could have put less emphasis on creating perfect elliptical collision and maybe have found a quicker workaround.
It would have allowed to get way more work done on the first day.

Lastly I am not happy about the balancing of the game.
The cost of the upgrades don't really make that much sense and the game plays really slow at the beginning and then ramps up massively to the point of breaking near the end.
I guess games like these are notoriously hard to balance and need a lot of playtesting, which is not ideal in a jam setting

Overall I am still happy with what I achieved and I am looking forward to see my results.