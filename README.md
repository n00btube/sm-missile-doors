# sm-missile-doors

Better Super Missile behaviors for red doors in Super Metroid.

# Patches

## supers-add-5-hits

In the original game, when a red door is hit by a Super Missile,
its hit counter is actually _set to_ 120 regular missile hits.
They aren’t added in.

This patch uses a teeny bit of free space at $84:FFB0
to make super missiles _add five strikes_ to the counter instead.

## supers-ineffective

Makes super missiles do nothing when hitting a red door.

No free space used (I am, for once, _removing_ code instead of adding.)

There exists a hex tweak for this, found by JAM, but this was fun.

# Credits

* Kejardon
* pjboy
* [MetConst](http://metroidconstruction.com/)

# Author

AdamF.

# License

MIT.
