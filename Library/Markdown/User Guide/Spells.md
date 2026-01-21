The **Spell list** on your [character sheet](Character%20Sheet%20Overview) shows all of your character’s **spells** ([B242](B242)), their levels, points spent, and notes on how they work.

GCS does **not** automate spellcasting. You must manually:

- Subtract **FP** (or **HP**) costs from your [Point pools](Point%20pools).
- Apply any effects or conditions from the spell to your character sheet.

You can add important reminders as [Notes](Notes), or use the [Page References](Page%20References) to jump directly to the rules in your PDF.

### Master Library

GCS includes hundreds of official spells in the **Master Library**. See [Library Explorer](Library%20Explorer) for more details.

You can also create your own custom spells.

## Spell list

The spell list on your character sheet includes the following columns. Select a column heading to sort ascending ![](./images/icons/icn-sortAscending.svg) or descending ![](./images/icons/icn-sortDescending.svg).

| Column                                        | Description                                                                                                                                                                |
|-----------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Spell**                                     | The spell name and any notes, including Magic Ritual information. Select the notes icon ![](./images/icons/icn-notesExpand.svg) to open or close the notes for this spell. |
| **SL**                                        | The calculated skill level, based on its controlling attribute and points spent.                                                                                           |
| **Rsl**                                       | The relative skill level compared to its controlling attribute. For example, `IQ+2`.                                                                                       |
| **Pts**                                       | The total points you’ve invested in the spell.                                                                                                                             |
| **![](./images/icons/icn-pageReference.svg)** | Page reference for the skill. See [Page References](Page%20References) for more details.                                                                                   |
| **![](./images/icons/icn-source.svg)**        | Tracks whether the skill matches the official **Master Library**. See _Master Library Syncing_ in [Character Sheet Overview](Character%20Sheet%20Overview)                 |

## Adding spells

To add a spell:

1. Open a Spell library from the **Master Library**.
2. Choose the spell you want.
3. Add the spell in one of two ways:
   - Drag it from the library to your sheet, or
   - Right-click it and select **Copy to Character Sheet**.

You can also [create a new custom spell](Custom%20Content):

- On your character sheet, go to **Item > New Spell**.

> [!IMPORTANT]
> Many spells have [prerequisites](Prerequisites). If you add one without meeting its requirements, GCS shows an error below it. Hover over the error to see what’s missing.

When you add a spell:

- GCS highlights the block where it can be dropped. No matter where you drag it, it goes to the right location.
- The **Points block** updates automatically. Points spent on spells reduce your unspent points.
- The spell’s starting level is calculated automatically, based on its controlling attribute. Changing an attribute can change the skill level.
- **Ritual information:** Casting time, cost, and other ritual details ([B237](B237)) are automatically calculated based on your spell level. These appear as notes under the spell on your character sheet.
- **Magery modifiers:** If your character has **Magery**, the appropriate modifiers are automatically applied to spells.

### Points and costs

- Most spells require at least **1 point** to purchase.
- Higher spell levels cost more points, based on the **Skill Cost Table** ([B170](B170)).

## Managing spells

You can change spells on your sheet in a few ways.

### Incrementing points vs. increasing levels

**Increment:**

- Adds (or removes) **one point** at a time.
- Depending on the skill cost table ([B170](B170)), several points may be required before the spell increases to the next level.

To add (or remove) points:

- Right-click the spell and select **Increment** (or **Decrement**), or
- Go to **Edit > Increment** (or **Decrement**).

**Increase Spell Level:**

- Raises (or lowers) the spell’s **actual level** directly.
- GCS automatically adds (or removes) the correct number of points based on the skill cost table.

To increase (or decrease) the spell level:

- Right-click the spell and select **Increase Skill Level** (or **Decrease Skill Level**), or
- Go to **Edit > Increase Skill Level** (or **Decrease Skill Level**).

> [!TIP]
> Use **Increment** when you’re tracking gradual training. Use **Increase Skill Level** if you want to jump directly to the next full level.

### Tracking study time

You can also track study time for spells. See [Study time](Study%20time) for more details.

> [!TIP]
> When tracking study time for spells, don’t forget that **Magery** reduces the required hours ([B66](B66)). Update the **Standard learning hours** setting in the Study section to reflect this reduction.

### Organizing spells with containers

Spells can be grouped into [Containers](Containers) to keep related magic together.

For example:

- Group all **Fire College** spells into one container.
- You can also use containers when building [Character templates](Character%20Templates) to require a caster picks a certain number of spells.

### Deleting a spell

To delete a spell:

- Right-click it and select **Delete**, or
- Select it and go to **Edit > Delete**.

## Ritual Magic Spells

GCS also supports **Ritual Magic Spells**, which work similarly to standard spells but with a few differences:

- **Creating Ritual Magic Spells:**
  - On your character sheet, go to **Edit > New Ritual Magic Spell**.
- **Field differences:**
  - Ritual Magic spells include a **Base Skill** field. This is usually the _Ritual Magic_ skill, but you can select another if appropriate.
  - The **Difficulty** field is restricted to **Average (A)** or **Hard (H)**, per the Ritual Magic rules.
- **Automatic calculation:**
  - GCS automatically handles the math for Ritual Magic in the background, so you only need to enter the Base Skill and points.

Ritual Magic spells behave like standard spells. You can edit them, track study time, and manage them in the same way.

## Editing spells

You can edit a spells in a few ways:

- Double-click it to open the **Detail Editor** for spells.
- Right-click it and select **Open Detail Editor**.
- Select a spell and go to **Edit > Open Detail Editor**.

Save your changes when you're done from the **Spell toolbar** (see below).

## Spell Detail Editor fields

The Spell Detail Editor includes the following fields:

| Spell Editor Field                       | Description                                                                                                                                                                                        |
|------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Name**                                 | The spell’s name.                                                                                                                                                                                  |
| **Notes**                                | Notes about the spell. These appear below the spell in the list. Select the Scripting Guide ![](./images/icons/icn-scriptingGuide.svg) for instructions on including JavaScript.                   |
| **VTT Notes**                            | Notes for use in your Virtual Tabletop system. See your VTT’s documentation.                                                                                                                       |
| **Tech Level**                           | The Tech Level associated with the spell, if applicable. This field is greyed out unless **Required** is checked.                                                                                  |
| **Required**                             | If checked, the Tech Level must match for the spell to be available.                                                                                                                               |
| **College**                              | The spell’s college ([B239](B239)). Separate multiple colleges with commas.                                                                                                                        |
| **Class**                                | The spell’s class, such as Regular, Area, Melee, Missile, Blocking, or Information ([B239](B239)).                                                                                                 |
| **Power Source**                         | The source of magical energy (for example, Arcane, Divine, or Psionic). This is used exclusively for Dungeon Fantasy characters.                                                                   |
| **Base Skill** (Ritual Magic Spell only) | For Ritual Magic spells, choose the skill (typically _Ritual Magic_) on which the spell is based. Note: This field is hidden unless the spell type is Ritual Magic. See Ritual Magic Spells above. |
| **Difficulty**                           | Select the controlling attribute (usually IQ) and the difficulty level (most spells are Hard or Very Hard) ([B235](B235)).                                                                         |
| **Points**                               | Total character points invested in this spell.                                                                                                                                                     |
| **Level**                                | Read-only. Shows the calculated spell level and relative skill level (`IQ+2`). Levels are calculated based on the GURPS skill cost table ([B170](B170)).                                           |
| **Resistance**                           | Notes on how the spell is resisted ([B241](B241))                                                                                                                                                  |
| **Casting Cost**                         | The cost to cast the spell ([B236](B236)).                                                                                                                                                         |
| **Maintenance Cost**                     | The cost to maintain the spell ([B237](B237)).                                                                                                                                                     |
| **Casting Time**                         | How long it takes to cast the spell ([B236](B236)). Usually 1 second (`1 sec`).                                                                                                                    |
| **Duration**                             | How long the spell lasts ([B237](B237)).                                                                                                                                                           |
| **Item**                                 | Notes on how this spell can be enchanted into an item ([M16](M16)).                                                                                                                                |
| **Tags**                                 | Comma-separated [Tags](Tags) to help organize spells.                                                                                                                                              |
| **Page Reference**                       | The page number where the spell appears. See [Page References](Page%20References).                                                                                                                 |
| **Page Highlight**                       | Text to highlight in the PDF. Leave blank unless the default highlights fail.                                                                                                                      |
| **ID**                                   | The spell’s unique ID.                                                                                                                                                                             |
| **Source ID**                            | The unique ID for this spell in the source library.                                                                                                                                                |
| **Source Library**                       | The name of the source library.                                                                                                                                                                    |
| **Source Path**                          | The path to the source library.                                                                                                                                                                    |
| **Prerequisites**                        | Requirements for this spell. See [Prerequisites](Prerequisites).                                                                                                                                   |
| **Melee Weapon Usage**                   | Melee weapon statistics if the spell grants or modifies melee attacks. See [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons).                                                             |
| **Ranged Weapon Usage**                  | Ranged weapon statistics if the spell grants or modifies ranged attacks. See [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons).                                                           |
| **Study**                                | Tracks study time for this skill. See [Study time](Study%20time). Remember that **Magery** reduces the hours required to learn spells.                                                             |

## Spell toolbar

The toolbar above the Spell Editor gives you quick access to common actions:

| Button                                     | Name                  | Description                                                        |
|:-------------------------------------------|-----------------------|--------------------------------------------------------------------|
| ![](images/icons/icn-help.svg)             | **Help**              | Opens the help page from the User Guide.                           |
| 100%                                       | **Zoom**              | Adjusts the display size of the Spell Editor.                      |
| ![](./images/icons/icn-applyChanges.svg)   | **Apply Changes**     | Saves and closes the Spell Editor.                                 |
| ![](./images/icons/icn-discardChanges.svg) | **Discard Changes**   | Exits without saving changes.                                      |
| ![](./images/icons/icn-substitutions.svg)  | **Set Substitutions** | Lets you enter values for spells with placeholders in their notes. |

---

[Return to Home](Home)
