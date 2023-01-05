# Equipment
Equipment is any physical object in the game world (e.g.: pencils, bullets, comic books, a '06 Ford Model N). And maybe some that aren't. This includes containers that represent physical gear (e.g.: a backpack, a coffee cup), which have capacity limits and weight. Containers can also be used as logical organizers in inventory, just make sure they have no weight or cost.

There are two types of Equipment. The stuff that's carried, which is Carried Equipment. And the stuff stacked in your closet, that comically falls on you when you open the door. It's funny to the rest of us, at any rate. That is Other Equipment. Both types are discussed here. As it relates to GCS, the only difference is that Carried Equipment counts against encumbrance and can be equipped.

Equipment is placed in [Equipment List](./Equipment%20List.md "Equipment List") blocks, which are found in Equipment Libraries, [Character Sheets](./Character%20Sheets.md "Character Sheets"), and [templates](./Character%20Sheets.md "Character Templates").

See [Library Tree](./Library%20Tree.md "Library Tree") for details on managing Equipment Libraries.

All equipment lists, equipment containers, and equipment items have a context menus. The menu bar options *Item* and *Edit* apply to all equipment. An equipment list must be the active panel for the Edit and Item menus to work.

Equipment fields are described below. See [Container](./Container.md "Container") for details on managing equipment containers.

## Usage
Equipment uses the [Detail Editor](./Detail%20Editor.md "Detail Editor").

### New
- **Item -> New \<type> Equipment**
- **\<context menu> -> New \<type> Equipment**

Adds a new item to the inventory and opens the detail editor.

### Add
Equipment is dragged and dropped from a source. Red highlighting displays an appropriate destination. On drop the item, or container and all contents, is added to the new location. The original is left in place. Note that drag and drop between the two character sheet inventories *moves* the item.

### Modify
Select the inventory item:
- **Edit -> Open Detail Editor**
- **\<context menu> -> Open Detail Editor**

Double click item.

### Duplicate
Select the inventory item:
- **Edit -> Duplicate**
- **\<context menu> -> Duplicate**

### Delete
Select the inventory item:
- **Edit -> Delete**
- **\<context menu> -> Delete**
- **press the delete key**

## Fields
These fields are for the Equipment Detail Editor. See [Equipment List](./Equipment%20List.md "Equipment List") for list field descriptions.

- **Name** : as displayed in the equipment list
- **[Notes](./Notes.md "Notes")** : displays under name
- **[VTT Notes](./VTT%20Notes.md "Notes")**
- **Tech Level** : B27, the items tech level
- **Legality Class** : B276, relates to how long you will spend in jail
- **Quantity** : read a dictionary
- **Value** : $ cost, followd by extended cost
- **Weight** : lb., followed by extended weight
- **Ignore weight for skills** : cancel encumbrance related skill penalty
- **Uses** : Number of times used
- **Maximum Uses** : Integer number of times the item can be used
- **[Tags](./Tags.md "Tags")**
- **[Page Reference](./Page%20Reference.md "Page Reference")**

Extended value and weight are calculated based on quantity.

*Ignore weight for skills* decreases encumbrance based penalties for skill that are effected so (e.g.: Karate, Climbing). This means the equipment does not cause a minus to the roll. For example, a 50' rope worn as a sash, might not impact climbing. This only impacts skill use, not encumbrance, dodge, move, or anything else.

### Blocks
- [Prerequisites](./Prerequisites.md "Prerequisites")
- [Features](./Features.md "Features")
- [Equipment Modifier](./Equipment%20Modifier.md "Equipment Modifier")
- [Melee Weapon Usage](./Melee%20Weapon%20Usage.md "Melee Weapon Usage")
- [Range Weapon Usage](./Range%20Weapon%20Usage.md "Range Weapon Usage")

## Parent
[Character Sheet](./Character%20Sheet.md "Character Sheet"), [Character Template](./Character%20Template.md "Character Template"), [Equipment Library](./Library%20Tree.md "Library Tree")
