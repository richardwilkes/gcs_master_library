# Sheet Settings

You can adjust how your [Character Sheet](Character%20Sheet%20Overview) behaves using the **Sheet Settings** view.

> [!NOTE]
> **Sheet Settings** apply only to the character sheet you currently have open.
> To set defaults for _all new sheets you create_, use [Default Sheet Settings](Default%20Settings).

For other settings options, see [General Settings](General%20Settings).

To open Sheet Settings:

- Open a character sheet, then go to **Sheet > Sheet Settings**, or select **Sheet Settings** ![sheet
  settings](images/icons/icn-sheetSettings.svg) on the character sheet toolbar.

Changes are applied immediately. You don’t need to save.

## Managing Settings

- **Reset settings to defaults:** Select **Reset** ![reset](images/icons/icn-reset.svg). This restores the current
  [Default Sheet Settings](Default%20Settings), including the default block layout, attributes, and body type.
- **Import or export settings:** On the Settings toolbar, select **Menu** ![menu](images/icons/icn-menu.svg), then
  choose:
  - **Import:** Load saved settings into the sheet. The file's block layout, attributes, and body type are applied too.
  - **Export:** Save the sheet's settings, block layout, attributes, and body type as a file.
  - Any `.sheet` settings files found in the `Settings` folder of your libraries are listed at the bottom of the menu,
    ready to import.

## Sheet Settings Options

The settings are grouped into sections.

### Damage

| Setting                          | Description                                                                                             |
|----------------------------------|---------------------------------------------------------------------------------------------------------|
| **Progression**                  | Choose a damage progression table. See **Damage Progression** below.                                    |
| **Show Lifting ST-based damage** | Displays damage based on Lifting ST on the Basic Damage block.                                          |
| **Show IQ-based damage**         | Displays IQ-based damage on the Basic Damage block ([PY120:7](PY120:7)).                                |

### Rules

| Setting                                                 | Description                                                                                                                                                                                                                                                                      |
|---------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Multiplicative Modifiers**                            | Applies the optional rule for Multiplicative Modifiers ([P102](P102)), which totals and applies enhancements, then totals and applies limitations.                                                                                                                                |
| **Half-Stat Defaults**                                  | Applies the optional rule for Half-Stat Defaulting ([PY65:30](PY65:30)), which reduces the effect of very high attributes when defaulting on hard skills.                                                                                                                       |
| **Modifying Dice + Adds**                               | Applies the optional rule ([B269](B269)) that converts damage adds to dice. Example: `2d+5` becomes `3d+1`.                                                                                                                                                                       |
| **Exclude unspent points from total**                   | If checked, your unspent [Character points](Character%20Points) aren't included in the total.                                                                                                                                                                                     |
| **Disable traits whose prerequisites are unsatisfied** | Treats a trait whose [prerequisites](Prerequisites) aren't met, or whose level exceeds its maximum, as disabled until they are: it contributes no points, features, or attacks. Traits whose prerequisites contradict each other are left enabled and tagged **Contradictory prerequisite(s)**. |

### Columns

| Setting                                                      | Description                                                                                                                                                                             |
|--------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Show library source**                                      | Displays the library source column ![source](images/icons/icn-source.svg). See _Master Library Syncing_ in [Character Sheet Overview](Character%20Sheet%20Overview) for more details.   |
| **Show page reference**                                      | Displays the page reference column ![page reference](images/icons/icn-pageReference.svg). See [Page References](Page%20References) for more details.                                    |
| **Show tech level (TL)**                                     | Displays the Tech Level ([B22](B22)) column in the equipment lists.                                                                                                                     |
| **Show legality class (LC)**                                 | Displays the Legality Class ([B267](B267)) column in the equipment lists.                                                                                                               |
| **Hide unused columns in the melee & ranged attack tables** | Leaves out any attack table column whose cells are all empty, such as the accuracy and range columns for powers that don't use them.                                                    |

### Display

| Setting                                               | Description                                                                                                                                                                                         |
|-------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Show trait modifier cost adjustments**              | Shows each modifier's cost in a trait's notes.                                                                                                                                                      |
| **Show equipment modifier cost & weight adjustments** | Shows cost and weight changes in equipment notes. For example: `[x2 to original cost; x2 to base weight]`.                                                                                          |
| **Show spell ritual, cost & time adjustments**        | Displays casting details for spells ([B237](B237)).                                                                                                                                                 |
| **Show all attacks**                                  | Displays every attack on your sheet, even from items that aren't carried or equipped. Attacks from unequipped or uncarried items are marked `(not carried)` or `(not equipped)`, as appropriate.     |
| **Hide conditional modifiers whose total is zero**    | Leaves out conditional modifiers whose bonuses cancel out to +0, such as an item that negates a disadvantage's penalty. Leave it off to keep such entries visible for troubleshooting.               |
| **Show the title instead of the name in the footer**  | Displays the character’s title from the Identity block instead of their name in the page footer.                                                                                                    |
| **Where to display**                                  | Controls where **User Description**, **Modifiers**, **Notes**, and **Skill Level Adjustments** are shown: **Not Shown**, **Inline**, **Tooltip**, or **Inline & Tooltip**.                           |

### Units of Measurement

| Setting    | Description                                                                                                                                                                        |
|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Length** | The units lengths are shown in: Feet & Inches, in, ft, yd, mi, cm, m, or km.                                                                                                       |
| **Weight** | The units weights are shown in: lb, #, oz, tn, t, kg, or g.                                                                                                                        |

Values are always stored in inches and pounds. Metric units use the simplified GURPS conversions: 2.5 cm
per inch and 2 lb per kilogram.

### Decimal Places

Choose how many decimal places the sheet shows for the **Height** and **Body Weight** in the Description block, for
**Equipment Weight**, and for **Equipment Value**: **As Needed** (every decimal place the value has) or 0 to 4 places.
Check **Pad with zeros** to show trailing zeros so that columns line up.

Only the display changes. Values are still stored and calculated at full precision, hovering over a rounded value
shows the exact figure, and clicking into the height or weight field shows the exact value for editing. Templates and
loot sheets follow the equipment settings in the [Default Sheet Settings](Default%20Settings).

### Trading

These settings are used when a character buys or sells [Equipment](Equipment).

| Setting          | Description                                                                                                                                                                                                                 |
|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Buy Percent**  | The percentage of an item's full price that buying it costs, unless another is chosen when buying. The default is 100%.                                                                                                     |
| **Sell Percent** | The percentage of an item's full price that selling it brings in, unless another is chosen when selling. The default is 50%.                                                                                                |
| **Sell Money**   | The coins that sales pay out in and that change is returned in. Drag equipment tagged `Money` (such as the coins in the Master Library) from any equipment list into the box to add it. Select **Remove** beside a coin to take it out. |

### Page

Adjust paper size, orientation, and margins for printing, PDF and image export, and the pages view of the sheet (see [Character Sheet Overview](Character%20Sheet%20Overview)).

| Setting         | Description                                                                                                              |
|-----------------|--------------------------------------------------------------------------------------------------------------------------|
| **Paper Size**  | A standard paper size name (see the table below) or a custom size, such as `8.5in x 11in` or `210mm x 297mm`.           |
| **Orientation** | **Portrait** or **Landscape**.                                                                                           |
| **Margins**     | The **Top**, **Bottom**, **Left**, and **Right** page margins, in `in`, `cm`, or `mm`. A value without units is inches. |

| Page Name | Size                           |
|-----------|--------------------------------|
| `letter`  | 8.5 x 11 in (216 x 279 mm)     |
| `legal`   | 8.5 x 14 in (216 x 356 mm)     |
| `tabloid` | 11 x 17 in (279 x 432 mm)      |
| `a0`      | 841 x 1189 mm (33.1 x 46.8 in) |
| `a1`      | 594 x 841 mm (23.4 x 33.1 in)  |
| `a2`      | 420 x 594 mm (16.5 x 23.4 in)  |
| `a3`      | 297 x 420 mm (11.7 x 16.5 in)  |
| `a4`      | 210 x 297 mm (8.3 x 11.7 in)   |
| `a5`      | 148 x 210 mm (5.8 x 8.3 in)    |
| `a6`      | 105 x 148 mm (4.1 x 5.8 in)    |

## Damage Progression

Choose how damage scales with Strength.

> [!TIP]
> If you’re not sure which option to use, stick with **Basic Set**. The other tables are optional house-rules.

| Damage Progression Option                                       | Description                                                                                                                                                                                                                   |
|-----------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Basic Set**                                                   | Standard GURPS damage table from [B16](B16).                                                                                                                                                                                  |
| **Knowing Your Own Strength**                                   | An alternative rule from [PY83:16](PY83:16) that smooths out high-ST damage scaling, making progression more gradual. Basic Lift uses the table from the article, and ST and HP are exempt from the SM cost reduction.         |
| **Knowing Your Own Strength (without Basic Lift adjustment)**   | The same damage progression, but Basic Lift is calculated the standard way ([B15](B15)).                                                                                                                                      |
| **No School Grognard Damage**                                   | A house-rule that reduces swing damage to narrow the gap with thrust. Intended for Dungeon Fantasy play. See [No School Grognard](https://noschoolgrognard.blogspot.com/2013/04/adjusting-swing-damage-in-dungeon.html).     |
| **Thrust = Swing-2**                                            | Sets thrust damage equal to swing-2 across the table. A lightweight alternative to Knowing Your Own Strength that doesn’t change Basic Lift, ST cost, or other traits.                                                        |
| **Swing = Thrust+2**                                            | A house-rule that makes swing damage equal to thrust+2. See [Gaming Ballistic](https://gamingballistic.com/2020/12/04/df-eastmarch-boss-fight-and-house-rules/).                                                             |
| **T Bone's New Damage for ST (option 1)**                       | A linear ST-based damage progression from [T Bone’s Games Diner](https://www.gamesdiner.com/rules-nugget-gurps-new-damage-for-st/).                                                                                          |
| **T Bone's New Damage for ST (option 1, cleaned)**              | Simplified version of option 1.                                                                                                                                                                                               |
| **T Bone's New Damage for ST (option 2)**                       | Variant of the linear progression.                                                                                                                                                                                            |
| **T Bone's New Damage for ST (option 2, cleaned)**              | Simplified version of option 2.                                                                                                                                                                                               |
| **Phoenix Flame D3**                                            | A house-rule that uses d3s instead of d6s for damage.                                                                                                                                                                         |

## Sheet layout

The arrangement of the blocks on the sheet is no longer a setting. It is edited directly on the sheet with **Edit
Layout** ![edit layout](images/icons/icn-layout.svg) on the character sheet toolbar. See _Sheet layout_ in
[Character Sheet Overview](Character%20Sheet%20Overview).

## Default Sheet Settings

You can change the default sheet settings for new characters in [Default Sheet Settings](Default%20Settings).

---

[Return to Home](Home)
