Character templates ([B258](B258)) are **collections of elements** that you can apply to your [character sheet](Character%20Sheet%20Overview). They make it easy to build consistent characters quickly, enforce choices, and bundle common options.

Templates can represent:

- Races (Elf, Dwarf).
- Professions or training packages (Knight, Soldier, Wizard).
- Gear sets (Adventurer’s Pack).
- Grimoires or spellbooks.
- Custom bundles of [Traits](Traits), [Skills](Skills), [Spells](Spells), [Equipment](Equipment), and [Notes](Notes).

When you apply a template to a character, its contents (including spent points) are copied into the character sheet. If you have any [Containers](Containers) using **ancestry type** or **template choices**, you'll be prompted to choose from a list of items to build your character.

## Creating a template

To build a new template:

1. Go to **File > New Character Template**.
2. Add [Traits](Traits), [Skills](Skills), [Spells](Spells), [Equipment](Equipment), and [Notes](Notes).
3. Add or adjust [Trait Modifiers](Trait%20Modifiers) or [Equipment Modifiers](Equipment%20Modifiers), if needed.
4. (Optional) select the **Set Body Type to** and select a [Body type](Body%20type) to apply a different body type besides humanoid.
5. Save your template for future use.

> [!TIP]
> Test new templates on a blank character sheet before applying them to an active character.

## Using Containers in templates

[Containers](Containers) give templates much of their power. They can group items, enforce choices, and provide structure when the template is applied.

When creating containers for templates, make sure to use:

- **Ancestry type:** Marks the container as an ancestry bundle (Elf, Dwarf, Human, etc.).
- **Template choices:** Enforces a required number of selections (**Count**) or a required point total (**Points**) from the container’s contents.

When you apply a template, GCS will present a series of windows prompting you to select items that satisfy these rules.

GCS supports simple **nested containers** automatically (for example, “Pick 1 of 3 Skills” inside a “Spend 10 Points in Skills” box). For very complex nesting (deeply mixed **Count** and **Points**), it’s best to document the requirement in the template’s notes instead of relying on the template choices to enforce it.

## Best practices for templates

To make your character templates more usable and consistent:

- **One top-level container:** Put everything in a single, clearly named [container](Containers) (for example, _Dwarf_, _Knight_, _Adventurer’s Pack_).
- **Always add [Page References](Page%20References)** for published content (at least at the top level).
- **Guide choices with Template Choices:** Use **Count** or **Points** to enforce “pick X skills” or “spend X points.”
- **Organize professions:** Group skills into **Primary**, **Secondary**, and **Background** sub-containers.
- **Separate Attribute:** Place traits like _Increased ST_ inside a container with **Container Type = Attributes** so points apply correctly.
- **Clean up modifiers:** Remove irrelevant trait modifiers (for example, don’t leave _No Fine Manipulators_ on a humanoid ancestry).
- **Set body type for character builds:** Make sure the correct **Body Type** is set on the template.

These practices help enforce rules without overwhelming players with confusing errors or irrelevant options.

## Substitutions

Templates can also include **substitution** using the **`@<comment>@`** format.

- When the template is applied, the comment becomes a prompt.
- The answer replaces the placeholder wherever it appears (commonly in fields like skill specialization).

## Modifiers in templates

When you add items to a template, modifier dialogs don’t trigger immediately. Instead:

- The item is added “as is.”
- When the template is applied to a character, GCS then presents any modifier dialogs for you to choose from.
- If you want to pre-select mods (for example, _this skill is always DX-based_), edit the item before saving the template.

## Character template toolbar

The toolbar above a Character template gives you quick access to common actions:

| Button                                    | Name                      | Description                                                                                                                                                                                      |
|:------------------------------------------|---------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ![](images/icons/icn-help.svg)            | **Help**                  | Opens the help page from the User Guide.                                                                                                                                                         |
| 100%                                      | **Zoom**                  | Adjusts the display size of the character template                                                                                                                                               |
| ![](images/icons/icn-expand.svg)          | **Expand/Collapse All**   | Show or hide all items within containers at once.                                                                                                                                                |
| ![](images/icons/icn-openCloseNotes.svg)  | **Open/Close All Notes**  | Show or hide all embedded notes on your template.                                                                                                                                                |
| ![](./images/icons/icn-applyTemplate.svg) | **Apply Template**        | Copies the contents of the current template to an open [character sheet](Character%20Sheet%20Overview). If more than one character sheets are open, you'll be prompted to choose which to apply. |
| ![](images/icons/icn-syncSources.svg)     | **Sync with all sources** | Sync all items in the character template with the Master Library.                                                                                                                                |
| N/A                                       | **Search**                | Search for content on the character template.                                                                                                                                                    |
| Checkbox                                  | **Names only**            | Limit searches to names only, ignoring notes or other details.                                                                                                                                   |

---

[Return to Home](Home)
