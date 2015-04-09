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

This is _almost_ hex tweak territory,
since it’s “write 8 bytes at address X” and uses no free space,
but I do everything as ASM already.
Why stop now?

# Credits

* Kejardon
* pjboy
* [MetConst](http://metroidconstruction.com/)

# Author

AdamF.

# License

MIT.
