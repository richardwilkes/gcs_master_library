Containers are one of the most important organizational tools in GCS. They let you group items for clarity, automate totals (like weight or points), and power advanced features in [character templates](Character%20templates).

You can create containers for [Traits](Traits), [Skills](Skills), [Spells](Spells), [Equipment](Equipment), and [Notes](Notes).

Containers let you **group and organize items**. For example:

- Put multiple advantages in an “Ancestry” group.
- Nest a **pouch** inside a **backpack** for equipment.
- Group spells by college or theme.

A container is identified by the **expand/collapse arrow** ![](./images/icons/icn-folderExpand.svg) next to its name. Depending on the type, you may also see extra details, such as **container type** (Traits) or **template choice settings** (Templates).

Containers can also hold other containers, so you can build complex structures when needed.

- Expand or collapse a container with the arrow ![](./images/icons/icn-folderExpand.svg).
- Show or hide **all containers** with the expand/collapse button ![](./images/icons/icn-expand.svg).
- Totals (points, weight, value) include all contents automatically, depending on container type.

## Creating a container

To create a container:

1. On your character sheet, go to **Item > New `[type]` Container**.
   - The available types are **Trait**, **Skill**, **Spell**, **Equipment**, and **Notes**.
2. A new empty container will appear in the appropriate section of your sheet.
3. Edit the container’s fields in the **Detail Editor** (see field tables below).

You can rename, tag, or add notes to containers to keep your sheet organized.

## Moving items in and out of containers

To move something into a container:

1. **Drag and drop** the item within the container.
   - The highlight must appear **indented** to place it inside.
   - If the highlight is flat (not indented), the item will go _below_ the container instead of inside it.
2. To move an item back out, drag it until the highlight is no longer indented.

> [!TIP]
> For equipment, container contents count toward the **container’s weight and value** totals (for example, a backpack full of gear).

## Ancestry container type

If your group of traits is specific to an ancestry type (like Elf, Dwarf, or Human) you can specify this in the container. The container will include a tag for **Ancestry** on the character sheet.

To select the ancestry:

- For **Container Type**, select **Ancestry** and choose the **Ancestry type**.

This ensures that GCS applies the correct metadata (like random names, height, and weight).

## Template Choices

When creating [Character templates](Character%20Templates), (p. B258), containers can also act as **choice groups**. This lets you enforce that a character picks a certain **number of options** or spends a certain **amount of points** from the container’s contents.

You can set the Template Choice type to:

- **Not applicable:** Default. Container just groups items.
- **Points:** Character must select items that total a point value.
- **Count:** Character must select a certain number of items.

The template choices use [Operators](Operators) (`is at least`, `is at most`, `is`) to specify the point and count requirements.

### Example Template Choices

| Statement                                           | Select                 |
|-----------------------------------------------------|------------------------|
| **Advantages**: _X points chosen from among..._     | `Points` `is at most`  |
| **Disadvantages**: _-X points chosen from among..._ | `Points` `is at least` |
| **Skills**: _Select X skills from:_                 | `Count` `is`           |

You can also **nest containers** (for example, one “Pick 1 of 3 Skills” box inside another “Pick 10 Points of Skills” box). GCS handles simple nesting automatically, but very complex setups may be better documented in the template notes. See [Character templates](Character%20Templates) for more details on creating templates with advanced containers.

> [!TIP]
> If you’re not building templates, you can ignore Template Choices. They don’t affect day-to-day use of containers.

For recommendations on how to structure Template Choices effectively, see **Best practices for templates** on [Character templates](Character%20Templates).

## Trait container fields

Containers for [Traits](Traits) include the following fields:

| Trait Container Field | Description                                                                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Name**              | The container’s name (e.g., “Advantages,” “Psionic Powers,” “Alternate Form”).                                                                              |
| **Notes**             | Notes that appear under the container. Select the Scripting Guide ![](./images/icons/icn-scriptingGuide.svg) for instructions on how to include JavaScript. |
| **VTT Notes**         | Notes for use in your Virtual Tabletop system. See your VTT’s documentation.                                                                                |
| **User Description**  | Additional notes for your reference. These appear as a tooltip when you hover.                                                                              |
| **Tags**              | Comma-separated [Tags](Tags) for organizaiton.                                                                                                              |
| **Enabled**           | If checked, the container and its contents are active on your character sheet.                                                                              |
| **Self-Control Roll** | The self-control roll to resist (p. B120). The CR rating will show in parenthesis on your character sheet.                                                  |
| **CR Adjustment**     | Adjustments tied to self-control rolls, such as reaction or fright check penalties.                                                                         |
| **Container Type**    | Defines special grouping rules: Group, Alternate Abilities, Ancestry, Attributes, or Meta-Trait.                                                            |
| **Ancestry**          | Available when Container Type is Ancestry. Choose ancestry type (for example, Human or Elf).                                                                |
| **Template Choices**  | Defines whether the container enforces a Points or Count choice when used in a template (see above).                                                        |
| **Page Reference**    | Page number in the source book. See [Page References](Page%20References) for details.                                                                       |
| **Page Highlight**    | Text to highlight in the PDF. Leave blank unless the default highlights fail.                                                                               |
| **ID**                | The containers’s unique ID.                                                                                                                                 |
| **Source ID**         | The containers’s unique ID in the source library.                                                                                                           |
| **Source Library**    | The name of the source library.                                                                                                                             |
| **Source Path**       | The path to the source library.                                                                                                                             |
| **Prerequisites**     | Any requirements for this container. See [Prerequisites](Prerequisites).                                                                                    |
| **Features**          | Features this container provides. See [Features](Features).                                                                                                 |

## Skill or Spell container fields

[Skills](Skills) and [Spells](Spells) containers support the following fields:

| Skill / Spell Container Field | Description                                                                                          |
|-------------------------------|------------------------------------------------------------------------------------------------------|
| **Name**                      | The container’s name (for example, “Combat Skills” or “Fire Spells”).                                |
| **Notes**                     | Notes that appear under the container.                                                               |
| **VTT Notes**                 | Notes for use in your Virtual Tabletop system. See your VTT’s documentation.                         |
| **Tags**                      | Comma-separated tags to help organize containers.                                                    |
| **Template Choices**          | Defines whether the container enforces a Points or Count choice when used in a template (see above). |
| **Page Reference**            | The page number in the source book. See [Page References](Page%20References).                        |
| **Page Highlight**            | Text to highlight in the PDF. Leave blank unless the default highlights fail.                        |
| **ID**                        | The container’s unique ID.                                                                           |
| **Source ID**                 | The unique ID for this contianer in the source library.                                              |
| **Source Library**            | The name of the source library.                                                                      |
| **Source Path**               | The path to the source library.                                                                      |

## Equipment container fields

Containers for [Equipment](Equipment) share the same fields as normal equipment.

See _Organizing items with containers_ in [Equipment](Equipment) for more on converting items to containers and back. A container must be empty before it can be converted back to a non-container.

## Notes container fields

Containers for [Notes](Notes) support the following fields:

| Note Container Field | Description                                                                             |
|----------------------|-----------------------------------------------------------------------------------------|
| **Notes**            | A multi-line text field for notes. Supports scripting and [Markdown](Markdown%20Guide). |
| **Page Reference**   | The page number in the source. See [Page References](Page%20References).                |
| **Page Highlight**   | Text to highlight in the PDF. Leave blank unless the default highlights fail.           |
| **ID**               | The container’s unique ID.                                                              |
| **Source ID**        | The unique ID for this container in the source library.                                 |
| **Source Library**   | The name of the source library.                                                         |
| **Source Path**      | The path to the source library.                                                         |
| **Markdown Preview** | Preview of how the notes will render.                                                   |

## Container Editors toolbar

The toolbar above a Container Editor gives you quick access to common actions:

| Button                                     | Name                  | Description                                                       |
|:-------------------------------------------|-----------------------|-------------------------------------------------------------------|
| ![](images/icons/icn-help.svg)             | **Help**              | Opens the help page from the User Guide.                          |
| 100%                                       | **Zoom**              | Adjusts the display size of the Container Editor.                 |
| ![](./images/icons/icn-applyChanges.svg)   | **Apply Changes**     | Saves and closes the Container Editor.                            |
| ![](./images/icons/icn-discardChanges.svg) | **Discard Changes**   | Exits without saving changes.                                     |
| ![](./images/icons/icn-substitutions.svg)  | **Set Substitutions** | Lets you enter values for items with placeholders in their notes. |

---

[Return to Home](Home)
