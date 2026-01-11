The **Equipment list** is where you add your character's gear (p. B264), including weapons and armor, to your [character sheet](Character%20Sheet%20Overview).

Equipment is divided into two sections:

- **Carried Equipment:** Items on your person (equipped or not). These count toward encumbrance.
- **Other Equipment:** Items you own but aren’t carrying. These do not count toward encumbrance and can’t be equipped. Items here don’t provide any bonuses or stats in play.

> [!TIP]
> Keep your equipment list tidy by collapsing containers, sorting columns (e.g., Name, Weight, Value), or searching for items in the character sheet toolbar.

## Tracking encumbrance

Carried items count toward encumbrance (p. B17). The Equipment list automatically totals the weight of all carried gear and highlights your current encumbrance level ![](./images/icons/icn-weight.svg) in the **Encumbrance, Move & Dodge block**.

### Master Library

GCS includes hundreds of official equipment items in the **Master Library**. See [Library Explorer](Library%20Explorer) for more details.

You can also create your own custom equipment.

## Equipment list

The Equipment list on your character sheet includes the following columns. Select a column heading to sort ascending ![](./images/icons/icn-sortAscending.svg) or descending ![](./images/icons/icn-sortDescending.svg).

Each section (Carried Equipment and Other Equipment) includes the **total weight and value** for all items in that section.

| Column                                                                   | Description                                                                                                                                                    |
| ------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **![](./images/icons/icn-applyChanges.svg)**                             | If checked, the equipment is **equipped** and any bonuses apply to your character. Available only for Carried Equipment.                                       |
| **#**                                                                    | Quantity of the item. Equipment with a quantity of zero won't add weapons to the [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons) table.             |
| **Carried Equipment**                                                    | The item's name and any notes, including usage information. Select the notes icon ![](./images/icons/icn-notesExpand.svg) to open or close the notes.          |
| **TL**                                                                   | Tech level (p. B22)                                                                                                                                            |
| **LC**                                                                   | Legality class (p. B267)                                                                                                                                       |
| **![](./images/icons/icn-value.svg)**                                    | Value of one item                                                                                                                                              |
| **![](./images/icons/icn-weight.svg)**                                   | Weight of one item                                                                                                                                             |
| **![](./images/icons/icn-stack.svg) ![](./images/icons/icn-value.svg)**  | Total value, including any contained items.                                                                                                                    |
| **![](./images/icons/icn-stack.svg) ![](./images/icons/icn-weight.svg)** | Total weight, including any contained items.                                                                                                                   |
| **![](./images/icons/icn-pageReference.svg)**                            | Page reference for the equipment. See [Page References](Page%20References) for more details.                                                                   |
| **![](./images/icons/icn-source.svg)**                                   | Tracks whether the equipment matches the official **Master Library**. See _Master Library Syncing_ in [Character Sheet Overview](Character%20Sheet%20Overview) |

## Adding equipment

To add equipment to your sheet:

1. Open an Equipment library from the **Master Library**.
2. Choose the equipment you want.
3. Add an item in one of two ways:
   - Drag it from the library to your sheet, or
   - Right-click it and select **Copy to Character Sheet**.

You can also [create new custom equipment](Custom%20Content):

- On your character sheet, go to **Item > New Carried Equipment** (or **New Other Equipment**).

### Weapons and armor

When adding weapons or armor:

- **Weapons (p. B267):** Equipped weapons appear on the **Melee Weapon** and/or **Ranged Weapon** lists with their weapon stats. See [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons) for more details.
- **Armor (p. B282):** Equipped armor updates the **Damage Resistance (DR)** values on the **Body type (Humanoid) block** based on the protection the armor provides.

## Managing equipment

### Equipping and carrying items

Items are equipped by default when added to **Carried Equipment**. Equipped items provide bonuses and update stats on your sheet.

- Clear the **check mark** to carry an item without equipping it.
- You can also right-click and select **Toggle State** (or go to **Edit > Toggle State**) to equip/unequip quickly.

When you unequip a **[container](Containers)**, all items inside it are also automatically unequipped. Those contained items don’t contribute any of their features until the container is re-equipped, or you move them out and equip them individually.

### Moving items around

Move items to the **Other Equipment list** if you aren’t carrying them:

- Drag it to the **Other Equipment** list,
- Right-click it and select **Move to Other Equipment**, or
- Select **Edit > Move to Other Equipment**.

You can move items back to **Carried Equipment** the same way.

### Adjusting quantities

You can increase (or decrease) the quantity of items in a few ways:

- Right-click it and select **Increment** (or **Decrement**).
- Select an item and go to **Edit > Increment** (or **Decrement)**.
- Double-click it to open the **Equipment Detail Editor**, then update the **Quantity** field.

### Adjusting levels

You can change the Tech Level or Equipment Level of an item:

- **Increase Tech Level:** Right-click the item and select **Increase Tech Level**.
- **Increase Equipment Level:** Right-click the item and select **Increase Equipment Level**.

You can also increase levels from the **Edit** menu.

### Organizing items with containers

[Containers](Containers) are items that can hold other items, such as backpacks or pouches (and other containers). These help organize gear and automatically total contained weight and value.

Containers show an arrow ![](./images/icons/icn-folderExpand.svg) next their name. Select the arrow to expand/collapse its contents.

You can convert an item to a container (or a non-container):

- Right-click an item and select **Convert to Container** (or **Convert to Non-Container**), or
- Select an item and go to **Edit > Convert to Container** (or **Convert to Non-Container**).

You cannot convert an item back to a non-container if it still contains equipment. You must move items out of the container first. See [Containers](Containers) for more details.

### Deleting equipment

To delete equipment:

- Right-click and select **Delete**, or
- Select the item and go to **Edit > Delete**.

## Editing equipment

You can edit equipment in a few ways:

- Double-click it to open the **Equipment Detail Editor**.
- Right-click it and select **Open Detail Editor**.
- Select an item and go to **Edit > Open Detail Editor**.

Save your changes when you're done from the **Equipment toolbar** (see below).

## Equipment Detail Editor fields

The Equipment Detail Editor includes the following fields:

| Equipment Editor Field       | Description                                                                                                                                                                                                           |
| ---------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Name**                     | The item’s name.                                                                                                                                                                                                      |
| **Notes**                    | Notes about the item. These appear below the item in the list. Select the Scripting Guide ![](./images/icons/icn-scriptingGuide.svg) for instructions on including JavaScript. Supports [Markdown](Markdown%20Guide). |
| **VTT Notes**                | Notes for use in your Virtual Tabletop system. See your VTT’s documentation.                                                                                                                                          |
| **Tech Level**               | The Tech Level (p. B22) associated with the item, if applicable.                                                                                                                                                      |
| **Legality Class**           | The Legality Class (p. B267).                                                                                                                                                                                         |
| **Quantity**                 | How many of the item you have.                                                                                                                                                                                        |
| **Equipped**                 | Whether the item is equipped. Equipped items apply any bonuses to your character.                                                                                                                                     |
| **Value**                    | Value of one item.                                                                                                                                                                                                    |
| **Extended Value**           | Total value based on quantity.                                                                                                                                                                                        |
| **Weight**                   | Weight of one item.                                                                                                                                                                                                   |
| **Extended Weight**          | Total weight based on quantity.                                                                                                                                                                                       |
| **Ignore weight for skills** | If checked, it excludes the item’s weight from encumbrance penalties for certain skills. It does not reduce overall encumbrance.                                                                                      |
| **Uses left**                | The number of uses available. Greyed out unless Maximum Uses > 0.                                                                                                                                                     |
| **Maximum Uses**             | Maximum number of uses.                                                                                                                                                                                               |
| **Rated ST**                 | Strength rating for using the item effectively.                                                                                                                                                                       |
| **Level**                    | The item’s level (if applicable).                                                                                                                                                                                     |
| **Tags**                     | Comma-separated [Tags](Tags) to help organize items.                                                                                                                                                                  |
| **Page Reference**           | The page number where the item appears. See [Page References](Page%20References).                                                                                                                                     |
| **Page Highlight**           | Text to highlight in the PDF. Leave blank unless the default highlights fail.                                                                                                                                         |
| **ID**                       | The item’s unique ID.                                                                                                                                                                                                 |
| **Source ID**                | The unique ID for this item in the source library.                                                                                                                                                                    |
| **Source Library**           | The name of the source library.                                                                                                                                                                                       |
| **Source Path**              | The path to the source library.                                                                                                                                                                                       |
| **Prerequisites**            | Requirements for this item. See [Prerequisites](Prerequisites) for details.                                                                                                                                           |
| **Features**                 | Lists any attribute, condition, or stat changes the item provides. See [Features](Features) for details.                                                                                                              |
| **Equipment Modifiers**      | Any modifications to the item's base cost and weight. See [Equipment Modifiers](Equipment%20Modifiers) for details.                                                                                                   |
| **Melee Weapon Usage**       | Melee weapon stats, if applicable. See [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons).                                                                                                                    |
| **Ranged Weapon Usage**      | Ranged weapon stats, if applicable. See [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons).                                                                                                                   |

## Equipment toolbar

The toolbar above the Equipment Editor gives you quick access to common actions:

| Button                                     | Name                  | Description                                                           |
| :----------------------------------------- | --------------------- | --------------------------------------------------------------------- |
| ![](images/icons/icn-help.svg)             | **Help**              | Opens the help page from the User Guide.                              |
| 100%                                       | **Zoom**              | Adjusts the display size of the Equipment Editor.                     |
| ![](./images/icons/icn-applyChanges.svg)   | **Apply Changes**     | Saves and closes the Equipment Editor.                                |
| ![](./images/icons/icn-discardChanges.svg) | **Discard Changes**   | Exits without saving changes.                                         |
| ![](./images/icons/icn-substitutions.svg)  | **Set Substitutions** | Lets you enter values for equipment with placeholders in their notes. |

---

[Return to Home](Home)
