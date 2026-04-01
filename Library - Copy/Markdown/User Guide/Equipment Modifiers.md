**Equipment Modifiers** ([B101](B101) or [B345](B345)) can be applied to [Equipment](Equipment) as either **enhancements** or **limitations**. These adjust the base cost and weight of items and allow you to add [Features](Features) to equipment.

### Master Library

GCS includes libraries of official Equipment modifiers in the **Master Library** that are taken from GURPS books and other supplements. See [Library Explorer](Library%20Explorer) for more details.

You can also create your own custom Equipment modifiers.

## Equipment Modifier list

The **Equipment Modifier** section in the Equipment Detail Editor includes the following columns. Select a column heading to sort ascending ![](./images/icons/icn-sortAscending.svg) or descending ![](./images/icons/icn-sortDescending.svg).

| Column                                        | Description                                                                                                                                                    |
|-----------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **![](./images/icons/icn-applyChanges.svg)**  | If checked, the modifier is **enabled** and its effects apply to the item.                                                                                     |
| **Equipment Modifier**                        | The modifier’s name and any notes. Select the notes icon ![](./images/icons/icn-notesExpand.svg) to open or close the notes.                                   |
| **TL**                                        | The Tech Level.                                                                                                                                                |
| **Cost Adjustment**                           | The calculated adjustment to the Equipment’s monetary cost.                                                                                                    |
| **Weight Adjustment**                         | The calculated adjustment to the Equipment's weight.                                                                                                           |
| **Tags**                                      | Tags used to help organize modifiers.                                                                                                                          |
| **![](./images/icons/icn-pageReference.svg)** | Page reference for the modifier. See [Page References](Page%20References).                                                                                     |
| **![](./images/icons/icn-source.svg)**        | Tracks whether the modifier matches the official **Master Library**. See _Master Library Syncing_ in [Character Sheet Overview](Character%20Sheet%20Overview). |

## Adding Equipment modifiers

You must add modifiers to existing [Equipment](Equipment).

To add a modifier:

1. Open the **Equipment Detail Editor** for the Equipment you want to modify.
2. Open a Modifier library from the **Master Library**.
3. Drag the modifier to the **Equipment Modifier** section in the editor (note: you must drag it to the precise location on the Detail Editor).

You can also create a new custom modifier:

- Open the Equipment Detail Editor for the Equipment you want to modify.
- Go to **Item > New Equipment Modifier**.

## Managing modifiers

You can manage modifiers directly in the Equipment Detail Editor:

- **Enable/disable:** Check or uncheck the box to apply or remove a modifier’s effects.
- **Delete:** Right-click the modifier and select **Delete** (or select it and go to **Edit > Delete**).

## Editing Equipment modifiers

You can edit an Equipment modifier in a few ways:

- Double-click it to open the **Detail Editor** for Equipment modifiers.
- Right-click it and select **Open Detail Editor**.
- Select an Equipment modifier and go to **Edit > Open Detail Editor**.

Save your changes when you're done from the **Equipment modifier toolbar** (see below).

## Equipment Modifier Detail Editor fields

The Equipment Modifier Detail Editor includes the following fields:

| Equipment Modifier field            | Description                                                                                                                                    |
|-------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| **Name**                            | The Equipment modifier's name.                                                                                                                 |
| **Tech Level**                      | The Tech Level.                                                                                                                                |
| **Notes**                           | Notes about what the Equipment modifier does. These appear below the Equipment on your character sheet. Supports [Markdown](Markdown%20Guide). |
| **Also show notes in weapon usage** | If checked, notes also appear in the weapon usage section.                                                                                     |
| **VTT Notes**                       | Notes for use in your Virtual Tabletop system. See your VTT’s documentation.                                                                   |
| **Enabled**                         | If checked, the modifier is active and applies its effects.                                                                                    |
| **Cost Modifier**                   | Adjusts the item’s monetary cost. See **Cost and Weight Modifiers** section below.                                                             |
| **Weight Modifier**                 | Adjusts the item’s weight. See **Cost and Weight Modifiers** section below.                                                                    |
| **Per Level**                       | If checked, applies the cost/weight change for each level of the equipment.                                                                    |
| **Tags**                            | Comma-separated [Tags](Tags) to help organize modifiers.                                                                                       |
| **Page Reference**                  | Page number for the modifier. See [Page References](Page%20References) for details.                                                            |
| **Page Highlight**                  | Text to highlight in the PDF. Leave blank unless the default highlights fail.                                                                  |
| **ID**                              | The modifiers’s unique ID.                                                                                                                     |
| **Source ID**                       | The unique ID for the modifier in the source library.                                                                                          |
| **Source Library**                  | The name of the source library.                                                                                                                |
| **Source Path**                     | The path to the source library.                                                                                                                |
| **Features**                        | Lists attribute, conditions, skill, spell, reaction, or weapon changes applied by the modifier. See [Features](Features) for more details.     |

## Cost and Weight Modifiers

Unlike [Trait Modifiers](Trait%20Modifiers), equipment modifiers adjust an item’s **money cost** and **weight** instead of character points.

Each modifier has two parts:

1. A **value** (for example, `+5`, `-10%`, `×2`, `+1 CF`).
2. A **stage** (selected from the dropdown).

### Accepted formats

Both **Cost** and **Weight** modifiers accept multiple formats. You can enter **whole numbers, decimals, or fractions**:

- **Flat changes**: `+5`, `-5 lb`, `-0.2`
- **Percentages**: `+10%`, `-20%`
- **Multipliers**: `×2`, `×3.2`, `×2/3`
- **Cost Factor (CF)**: `+2 CF`, `-0.2 CF` (cost only, see below)

Cost Factor (CF) represents **multiplicative adjustments** to an item’s base price.

- A **positive CF** increases cost by adding multiples of the base price.
- A **negative CF** decreases cost by subtracting multiples of the base price.

For example, a $500 Broadsword with **+2 CF** (Fine quality) costs: `$500 base + ($500 x 2 CF) = $1,500`.

### Cost Modifier stages

- **To original cost:** Adjusts the raw book cost.
- **To base cost:** Adjusts after TL/CF changes.
- **To final base cost:** Adjusts after other modifiers, but before the final calculation.
- **To final cost:** Adjusts the very end result.

### Weight Modifier stages

- **To original weight:** Adjusts the listed book weight.
- **To base weight:** Adjusts after TL/CF changes.
- **To final base weight:** Adjusts after other modifiers, but before the final calculation.
- **To final weight:** Adjusts the very end result.

> [!TIP]  
> Multiple cost or weight modifiers can stack. Be careful which stage you apply them at — this changes the math significantly.

## Equipment Modifier toolbar

The toolbar above the Equipment Modifier Editor gives you quick access to common actions:

| Button                                     | Name                | Description                                                |
|--------------------------------------------|---------------------|------------------------------------------------------------|
| ![](./images/icons/icn-help.svg)           | **Help**            | Opens the help page from the User Guide.                   |
| 100%                                       | **Zoom**            | Adjusts the display size of the Equipment Modifier Editor. |
| ![](./images/icons/icn-applyChanges.svg)   | **Apply Changes**   | Saves and closes the Equipment Modifier Editor.            |
| ![](./images/icons/icn-discardChanges.svg) | **Discard Changes** | Exits without saving changes.                              |

---

[Return to Home](Home)
