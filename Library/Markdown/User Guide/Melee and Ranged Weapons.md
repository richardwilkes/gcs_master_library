The **Melee Weapon list** and **Ranged Weapon list** on your [character sheet](Character%20Sheet%20Overview) show all of your character’s weapons (p. B268–B276), their usage statistics, and related notes.

These lists include:

- **Natural attacks** (bite, kick, punch).
- **Weapons** from [Equipment](Equipment).
- **Melee and missile spells** from [Spells](Spells).

Weapons are added through the **Equipment list**. An item with a **Melee** or **Ranged Weapon Usage** automatically appears in the appropriate weapon list. To change or delete a weapon, edit or remove the item from the **Equipment list**.

> [!NOTE]
> Normally, only **carried** _and_ **equipped** weapons appear here. If you enable **Show all weapons** in [Sheet Settings](Sheet%20Settings), GCS will also display weapons from items that are _not_ carried or equipped. These are clearly marked as `(not carried)` or `(not equipped)`, as appropriate.

### Master Library

GCS includes hundreds of official weapons in the **Master Library**. See [Library Explorer](Library%20Explorer) for more details.

You can also create your own custom weapons.

## Melee Weapon list

The **Melee Weapon list** on your character sheet includes the following columns. Select a column heading to sort ascending ![](./images/icons/icn-sortAscending.svg) or descending ![](./images/icons/icn-sortDescending.svg).

| Column           | Description                                                      |
|------------------|------------------------------------------------------------------|
| **Melee Weapon** | The item's name (from equipment).                                |
| **Usage**        | Name for the entry. A weapon can have multiple usages.           |
| **SL**           | The calculated skill level with the weapon.                      |
| **Parry**        | Bonus or penalty to Parry (p. B269).                             |
| **Block**        | Bonus or penalty to Block (p. B327).                             |
| **Damage**       | Damage done by the weapon (p. B268).                             |
| **Reach**        | The weapon’s reach in combat (p. B269).                          |
| **ST**           | Minimum Strength needed to use the weapon effectively (p. B270). |

## Ranged Weapon list

The **Ranged Weapon list** on your character sheet includes the following columns. Select a column heading to sort ascending ![](./images/icons/icn-sortAscending.svg) or descending ![](./images/icons/icn-sortDescending.svg).

| Column            | Description                                                       |
|-------------------|-------------------------------------------------------------------|
| **Ranged Weapon** | The item's name (from equipment).                                 |
| **Usage**         | Name for the entry. A weapon can have multiple usages.            |
| **SL**            | The calculated skill level with the weapon.                       |
| **Acc**           | Accuracy bonus from aiming (p. B269).                             |
| **Damage**        | Damage done by the weapon (p. B268).                              |
| **Range**         | Maximum and half-damage range (p. B269).                          |
| **RoF**           | Rate of Fire (how many shots per attack) (p. B270).               |
| **Shots**         | The number of shots a weapon can fire before reloading (p. B270). |
| **Bulk**          | The weapon’s size and handiness (p. B270).                        |
| **Recoil**        | How easy the weapon is to fire (p. B271).                         |
| **ST**            | Minimum Strength needed to use the weapon effectively (p. B270).  |

## Adding weapons

Weapons are not created directly in the Melee or Ranged Weapon lists. Instead:

- Add a weapon the same way you add [Equipment](Equipment) or [Spells](Spells).
- If the item has **Melee Weapon Usage** or **Ranged Weapon Usage** fields filled out in the Detail Editor, it automatically appears in the appropriate weapon list.

Some weapons can have **multiple usages**. For example, a spear may have a **thrust impaling** attack and a **swing cutting** attack, which appear as separate rows.

To add natural attacks (bite, kick, and punch):

- Go to **Item > Add Natural Attacks**. This adds all three automatically.

## Managing and editing weapons

You manage and edit melee or ranged weapons the same way you edit [Equipment](Equipment).

Weapon stats are controlled by the **Melee Weapon Usage** and **Ranged Weapon Usage** fields in the **Equipment Detail Editor**. For [Spells](Spells), these fields are available in the **Spell Detail Editor**.

To edit a weapon’s details:

- Open the weapon’s source item from the **Equipment list**, then edit its **Weapon Usage fields**.

> [!NOTE]
> A weapon must have at least one **default skill** (e.g., Broadsword, Spear) to calculate its skill level. See [Defaults](Defaults).

## Melee Weapon Usage fields

The Melee Weapon Detail Editor includes the following fields:

| Field                    | Description                                                                           |
|--------------------------|---------------------------------------------------------------------------------------|
| **Hide**                 | If checked, hides the weapon stat from the melee weapon list on your character sheet. |
| **Usage**                | Name for the entry. A weapon can have multiple usages.                                |
| **Notes**                | Notes that appear with the weapon entry. Supports [Markdown](Markdown%20Guide).       |
| **Parry**                | Parry bonus or penalty (p. B269).                                                     |
| **Fencing**              | Uses fencing parry rules (p. B296).                                                   |
| **Unbalanced**           | Weapon can’t attack and parry on the same turn (p. B269).                             |
| **Block**                | Bonus or penalty to Block (p. B327).                                                  |
| **Damage**               | Damage done by the weapon (p. B268), usually _thrust_ or _swing_.                     |
| **Leveled**              | Adjusts damage by level.                                                              |
| **Multiply ST**          | Changes how Strength modifies damage.                                                 |
| **Unaffected by level**  | Ignores level-based modifiers.                                                        |
| **Per level**            | Damage adjustment per level.                                                          |
| **Per die**              | Damage adjustment per die.                                                            |
| **Armor Divisor**        | Adjusts how good the attack is at penetrating DR (p. B278).                           |
| **Type**                 | The type of injury or effect of the attack (cut, imp, cr, etc.) (p. B268).            |
| **Fragmentation**        | Special rules for explosive damage (p. B414).                                         |
| **Reach**                | Reach values for the weapon (p. B269).                                                |
| **Minimum**              | Minimum reach.                                                                        |
| **Close Combat**         | Allows use in close combat (p. B391).                                                 |
| **Reach Change Ready**   | Reach changes require a Ready maneuver (p. B366).                                     |
| **Minimum ST**           | Minimum Strength needed to use the weapon (p. B270).                                  |
| **Two-handed**           | Requires two hands (p. B270).                                                         |
| **Two-handed & unready** | Takes a Ready maneuver when switching grips (p. B270).                                |
| **Defaults**             | Lists default skills for this weapon (p. B271). See [Defaults](Defaults).             |

## Ranged Weapon Usage fields

The Ranged Weapon Detail Editor includes the following fields:

| Field                             | Description                                                                            |
|-----------------------------------|----------------------------------------------------------------------------------------|
| **Hide**                          | If checked, hides the weapon stat from the ranged weapon list on your character sheet. |
| **Usage**                         | Name for the entry. A weapon can have multiple usages.                                 |
| **Notes**                         | Notes that appear with the weapon entry. Supports [Markdown](Markdown%20Guide).        |
| **Accuracy**                      | Base accuracy bonus (p. B269).                                                         |
| **Scope**                         | Adds scope bonus to accuracy (p. B269 or HT155).                                       |
| **Jet**                           | Attack is treated as a jet (continuous stream) (p. B106).                              |
| **Damage**                        | Damage done by the weapon (p. B268), usually _thrust_ or _swing_.                      |
| **Leveled**                       | Adjusts damage by level.                                                               |
| **Multiply ST**                   | Changes how Strength modifies damage.                                                  |
| **Unaffected by level**           | Ignores level-based modifiers.                                                         |
| **Per level**                     | Damage adjustment per level.                                                           |
| **Per die**                       | Damage adjustment per die.                                                             |
| **Armor Divisor**                 | Adjusts how good the attack is at penetrating DR (p. B278).                            |
| **Type**                          | The type of injury or effect of the attack (cut, imp, cr, etc.) (p. B268).             |
| **Fragmentation**                 | Special rules for explosive damage (p. B414).                                          |
| **Range**                         | Maximum range values (p. B269).                                                        |
| **½D Range**                      | Half-damage range (p. B269).                                                           |
| **Minimum Range**                 | Minimum range (p. B269).                                                               |
| **Muscle-powered**                | Weapon damage is powered by muscle (p. B269).                                          |
| **Ranges are in miles**           | Range is measured in miles instead of yards.                                           |
| **Rate of Fire Mode 1**           | Shots per attack and secondary projectiles (p. B373)                                   |
| **Fully Automatic Only**          | Weapon fires only in automatic mode (p. B408).                                         |
| **High-cyclic Controlled Bursts** | Allows controlled bursts at high RoF (p. HT83).                                        |
| **Rate of Fire Mode 2**           | Shots per attack and secondary projectiles (p. B373)                                   |
| **Shots**                         | Number of shots before reloading (p. B270).                                            |
| **In Chamber**                    | Number of shots ready to fire (p. B270).                                               |
| **Duration**                      | Time the weapon fires continuously.                                                    |
| **Reload Time**                   | Time to reload (p. B270).                                                              |
| **Per Shot**                      | Reload time applies per shot.                                                          |
| **Thrown Weapon**                 | Marks the weapon as thrown (p. B270).                                                  |
| **Bulk**                          | Size and handling penalty (p. B270).                                                   |
| **For Giants**                    | Special handling for giant-sized body type.                                            |
| **Retracting Stock**              | Weapon has a retracting stock.                                                         |
| **Recoil**                        | Minimum margin of success needed for extra hits (p. B271).                             |
| **For Slugs**                     | Used for slug ammunition.                                                              |
| **Minimum ST**                    | Minimum Strength needed to use the weapon (p. B270).                                   |
| **Two-handed**                    | Requires two hands (p. B270).                                                          |
| **Two-handed & unready**          | Takes a Ready maneuver when switching grips (p. B270).                                 |
| **Has bipod**                     | Weapon includes a bipod (p. B412).                                                     |
| **Mounted**                       | Weapon must be mounted (p. B412).                                                      |
| **Uses a musket rest**            | Weapon requires a musket rest (p. B412).                                               |
| **Defaults**                      | Lists default skills for this weapon (p. B275). See [Defaults](Defaults).              |

## Weapon Usage toolbar

The toolbar above the Weapon Editor gives you quick access to common actions:

| Button                                     | Name                | Description                                    |
|:-------------------------------------------|---------------------|------------------------------------------------|
| ![](images/icons/icn-help.svg)             | **Help**            | Opens the help page from the User Guide.       |
| 100%                                       | **Zoom**            | Adjusts the display size of the Weapon Editor. |
| ![](./images/icons/icn-applyChanges.svg)   | **Apply Changes**   | Saves and closes the Weapon Editor.            |
| ![](./images/icons/icn-discardChanges.svg) | **Discard Changes** | Exits without saving changes.                  |

---

[Return to Home](Home)
