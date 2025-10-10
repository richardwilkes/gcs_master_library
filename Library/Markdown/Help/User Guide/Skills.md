The **Skill list** on your [character sheet](Character%20Sheet%20Overview) shows all of your character’s skills (p. B167), their levels, and points spent.

### Master Library

GCS includes the full list of official skills in the **Master Library**. See [Library Explorer](Library%20Explorer) for more details.

You can also create your own custom skills.

## Skill list

The skill list on your character sheet includes the following columns. Select a column heading to sort ascending ![](./images/icons/icn-sortAscending.svg) or descending ![](./images/icons/icn-sortDescending.svg).

| Column                                    | Description                                                                                                                                                                           |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Skill / Technique**                     | The skill or technique name, specialization (in parentheses), and any notes. Select the notes icon ![](./images/icons/icn-notesExpand.svg) to open or close the notes for this skill. |
| **SL**                                    | The calculated skill level, based on its controlling attribute and points spent.                                                                                                      |
| **Rsl**                                   | The relative skill level compared to its controlling attribute. For example, `DX+2`.                                                                                                  |
| **Pts**                                   | The total points you’ve invested in the skill.                                                                                                                                        |
| ![](./images/icons/icn-pageReference.svg) | Page reference for the skill. See [Page References](Page%20References) for more details.                                                                                              |
| ![](./images/icons/icn-source.svg)        | Tracks whether the skill matches the official **Master Library**. See _Master Library Syncing_ in [Character Sheet Overview](Character%20Sheet%20Overview)                            |

## Adding skills

To add a skill:

1. Open a Skill library from the **Master Library**.
2. Choose the skill you want.
3. Add the skill in one of two ways:
   - Drag it from the library to your sheet, or
   - Right-click it and select **Copy to Character Sheet**.

You can also [create a new custom skill](Custom%20Content):

- On your character sheet, go to **Item > New Skill**.

> [!IMPORTANT]
> Some skills have [prerequisites](Prerequisites). If you add one without meeting its requirements, GCS shows an error below it. Hover over the error to see what’s missing.

When you add a skill:

- GCS highlights the block where it can be dropped. No matter where you drag it, it goes to the right location.
- The **Points block** updates automatically. Points spent on skills reduce your unspent points.
- The skill’s starting level is calculated automatically, based on its controlling attribute. Changing an attribute can change the skill level.

### Points and costs

- Most skills require at least **1 point** to purchase.
- Higher skill levels cost more points, based on the buying skills rules and the **Skill Cost Table** (p. B170).

## Managing skills

You can change skills on your sheet in a few ways.

### Incrementing points vs. increasing levels

**Increment/Decrement:**

- Adds or removes **one point** at a time.
- Depending on the skill cost table (p. B170), several points may be required before the skill increases to the next level.

To add or remove points:

- Right-click the skill and select **Increment** or **Decrement**, or
- Go to **Edit > Increment** or **Edit > Decrement**.

**Increase/Decrease Skill Level:**

- Raises or lowers the skill’s **actual level** directly.
- GCS automatically adds or removes the correct number of points based on the skill cost table.

To increase or decrease the skill level:

- Right-click the skill and select **Increase Skill Level** or **Decrease Skill Level**, or
- Go to **Edit > Increase Skill Level** or **Edit > Decrease Skill Level**.

> [!TIP]
> Use **Increment** when you’re tracking gradual training. Use **Increase Skill Level** if you want to jump directly to the next full level.

### Tracking study time

You can also track study time for skills. See [Study time](Study%20time) for more details.

### Organizing skills with containers

Skills can be grouped into [Containers](Containers) for easier navigation.

For Example:

- Put **Broadsword** and **Axe/Mace** into a “Melee Combat Skills” container.
- You can also use containers when building [Character templates](Character%20templates) to enforce “pick X skills” rules.

### Deleting a skill

To delete a skill:

- Right-click it and select **Delete**, or
- Select it and go to **Edit > Delete**.

## Editing skills

You can edit a skill in a few ways:

- Double-click it to open the **Detail Editor** for skills.
- Right-click it and select **Open Detail Editor**.
- Select a skill and go to **Edit > Open Detail Editor**.

Save your changes when you're done from the **Skill toolbar** (see below).

## Skill Detail Editor fields

The Skill Detail Editor includes the following fields:

| Skill Editor Field      | Description                                                                                                                                                                                                             |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Name**                | The skill’s name.                                                                                                                                                                                                       |
| **Specialization**      | The specific specialty of the skill, if required (p. B169).                                                                                                                                                             |
| **Tech Level**          | The Tech Level associated with the skill, if applicable. This field is greyed out unless **Required** is checked.                                                                                                       |
| **Required**            | If checked, the Tech Level must match for the skill to be available.                                                                                                                                                    |
| **Notes**               | Notes about the skill. These appear below the skill in the list. Select the Scripting Guide ![](./images/icons/icn-scriptingGuide.svg) for instructions on including JavaScript. Supports [Markdown](Markdown%20Guide). |
| **VTT Notes**           | Notes for use in your Virtual Tabletop system. See your VTT’s documentation.                                                                                                                                            |
| **Tags**                | Comma-separated [Tags](Tags) to help organize skills.                                                                                                                                                                   |
| **Difficulty**          | Select the controlling attribute (p. B167) and the difficulty level (p. B168). Options include Easy, Average, Hard, Very Hard, and Wildcard (p. B175).                                                                  |
| **Encumbrance Penalty** | Multiplies the current encumbrance level. Applies to skills like Stealth, Climbing, and Swimming (p. B17).                                                                                                              |
| **Points**              | Total character points invested in this skill.                                                                                                                                                                          |
| **Level**               | Read-only. Shows the calculated skill level and relative skill level (`DX+2`). Levels are calculated based on the GURPS skill cost table (p. B170).                                                                     |
| **Page Reference**      | The page number where the skill appears. See [Page References](Page%20References).                                                                                                                                      |
| **Page Highlight**      | Text to highlight in the PDF. Leave blank unless the default highlights fail.                                                                                                                                           |
| **ID**                  | The skill’s unique ID.                                                                                                                                                                                                  |
| **Source ID**           | The unique ID for this skill in the source library.                                                                                                                                                                     |
| **Source Library**      | The name of the source library.                                                                                                                                                                                         |
| **Source Path**         | The path to the source library.                                                                                                                                                                                         |
| **Prerequisites**       | Requirements for this skill. See [Prerequisites](Prerequisites).                                                                                                                                                        |
| **Defaults**            | Lists default skills and values (p. B173). See [Defaults](Defaults).                                                                                                                                                    |
| **Features**            | Lists attribute, condition, skill, spell, reaction, or weapon changes applied by the skill. See [Features](Features).                                                                                                   |
| **Melee Weapon Usage**  | Melee weapon statistics (p. B268), including defaults. See [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons).                                                                                                  |
| **Ranged Weapon Usage** | Ranged weapon statistics (p. B268), including defaults. See [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons).                                                                                                 |
| **Study**               | Tracks study time for this skill. See [Study time](Study%20time).                                                                                                                                                       |

## Skill toolbar

The toolbar above the Skill Editor gives you quick access to common actions:

| Button                                     | Name                  | Description                                                                          |
| :----------------------------------------- | --------------------- | ------------------------------------------------------------------------------------ |
| ![](images/icons/icn-help.svg)             | **Help**              | Opens the help page from the User Guide.                                             |
| 100%                                       | **Zoom**              | Adjusts the display size of the Skill Editor.                                        |
| ![](./images/icons/icn-applyChanges.svg)   | **Apply Changes**     | Saves and closes the Skill Editor.                                                   |
| ![](./images/icons/icn-discardChanges.svg) | **Discard Changes**   | Exits without saving changes.                                                        |
| ![](./images/icons/icn-substitutions.svg)  | **Set Substitutions** | Lets you enter values for skills with placeholders in their specialization or notes. |

---

[Return to Home](Home)
