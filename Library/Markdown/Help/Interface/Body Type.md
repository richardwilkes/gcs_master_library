# Body Type
Body Type is the physical form, or lack of, the character takes. These parts form the damage location table. They are also used for option lists, such as equipment DR locations. This panel allows body parts to added, removed or changed.

The default is a humanoid. Changing this isn't a problem, unless the character happens to be a humanoid, in which case, leave it alone. On the other hand, if the character is a humanoid with six heads and one arm, or a giant octopus, feel free to add and remove parts. Adding parts can also increase the resolution of the damage table. For example, adding a sub-table for left and right eyes gives a means to roll for which eye got shot, and over which eye to rivet that large, iron eye-patch you've had in your pocket for ages.

This is [unlinked](./unlinked%20data.md "unlinked data") and stored with each character sheet. Changes must be saved. Modifications can be saved as a [set](./Settings.md "Settings").

Initial values are found in [Default Body Type](./Default%20Body%20Type.md "Default Body Type") menu option.

## Usage
**Settings -> Body Type...**

The menu bar option is available when a [Character Sheet](./Character%20Sheet.md "Character Sheet") is active.

## Interface
### Tool Bar
- **[Save](./common%20icon.md "common icon:Save") ( ![](./img/check.png "Save") )** : save and close
- **[Cancel](./common%20icon.md "common icon:Cancel") ( ![](./img/no.png "Cancel") )** : cancel and close
- **[Reset](./common%20icon.md "common icon:Reset") ![](./img/power.png "Reset")** : return to reality
- **[Menu](./common%20icon.md "common icon:Menu") ( ![](./img/bars.png "Reset") )**
  - **[Import](./Settings.md "Import")** : Reads a JSON file with these values
  - **[Export](./Settings.md "Export")** : Writes a JSON file with these values
  - a list of all saved [Settings](./Settings.md "Settings") sets

## Fields
- **Name** : What the body type set is called
- **Roll** : dice used for the location roll

*Roll* number range count and the total slots used must match. Otherwise, the table spread will end up funny looking. Default human is 3d (16 number range) with an equal number of slots used.

For each body part:
- **ID** : variable name, must be unique within each group
- **Choice Name** : displayed when selecting the location as an option (e.g.: equipment feature DR location)
- **Table Name** : Text label on damage table
- **Slots** : number count for the roll (e.g.: 2 numbers from a 3d roll)
- **Hit Penalty** : skill penalty for aiming at that location. Yes, the groin is -3 for everyone.
- **DR Bonus** : Start damage resistance level
- **Description** : Any additional information concerning that particular bit. This text is a tooltip display for the electronic character sheet and .

### Tools
For the entire body set:
- **[Add](./common%20icon.md "common icon:Add") ( ![](./img/plus.png "Add") )** : add a body part (next to name)

For each body part:
- **[Move](./common%20icon.md "common icon:Move") ( ![](./img/handle.png "Move") )** : to reorder body parts. It's less painful than it sounds (click and drag).
- **[Delete](./common%20icon.md "common icon:Delete") ( ![](./img/trash.png "Delete") )** : to delete body parts. Shouldn't that be a big, flaming axe?
- **[Add](./common%20icon.md "common icon:Add") ( ![](./img/plus.png "Add") )** : to add a sub-part, in case you want micro-manage the bullets.

Sub-parts are grouped to create sub-tables for additional rolls. Other than the damage location table, which has indented sub-tables, all body parts are on a single list. Provide enough "Choice Name" context to find the right part.

## Related
[Character Sheet](./Character%20Sheet.md "Character Sheet")
