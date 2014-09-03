The Haskell Robot
=================

**Robot** is a library for sending fake keyboard and mouse events using
[Haskell][]. Applications will respond as though the user performed the
actions themselves.

[Haskell]: http://haskell.org/

Only X11 systems are supported right now, but Windows and Mac can be
added later if anyone cares.

Here are some things you can do:

* Test graphical interfaces and websites!

* Play silly pranks on your friends!

* Finally beat those [silly Flash games where you press the same button
  over and over again really fast][blah blah blah]. I don't like those.

[blah blah blah]: http://mixermike622.deviantart.com/art/GO-FAST-287788805


Quick start
-----------

First, download and install the library:

    git clone https://github.com/lfairy/robot.git
    cd robot
    cabal install

Now try running some of the programs in the `examples` directory.


TODO
----

* Backends for Mac OS X, Windows, and Wayland

* Screenshots

* Actions currently run instantaneously, which can be an issue for some
  applications. Perhaps add a small delay between each operation like
  Java does.
