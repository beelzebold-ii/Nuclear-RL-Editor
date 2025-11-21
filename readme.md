# Nuclear RL Level Editor

This is the level editor for Nuclear RL. I'm sure you can guess what it's used for.

Most of the controls are onscreen. [A] cycles through placement types (tile, enemy, item, etc). [X/C] cycles through what to place.

[S/D] changes the size of placed piles of ammo, [</>] changes what difficulty a placed object appears on, [?] toggles if the object appears on higher difficulties or lower difficulties.

[Z] actually places an object or tile, [DEL/BKSP] deletes an object under the cursor. [ESC] opens the menu for saving your level or exiting the editor.

Saved levels are saved in %appdata%/LOVE/nikowa_nuclearrl_editor on windows, or $XDG_DATA_HOME/love/nikowa_nuclearrl_editor on linux.

### Misc info

Difficulty spawning of an object is displayed as a number and a +/-, depending on if the object spawns on that difficulty or higher, or on that difficulty or lower.

The level's player start and main stairs down cannot be deleted, only moved. The "secret" exit is optional and likely of very little use in custom levels unless you are somehow creating a multifloor campaign.