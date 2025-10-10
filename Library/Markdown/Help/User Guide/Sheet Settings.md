You can adjust how your [Character Sheet](Character%20Sheet%20Overview) behaves using the **Sheet Settings** menu.

> [!NOTE]
> **Sheet Settings** apply only to the character sheet you currently have open.
> To set defaults for _all new sheets you create_, use [Default Sheet Settings](Default%20Settings).

For other settings options, see [General Settings](General%20Settings).

To open Sheet Settings:

- Open a character sheet, then go to **Settings > Sheet Settings**.

Changes are applied immediately. You don’t need to save.

## Managing Settings

- **Reset settings to defaults:** Select **Reset** ![](./images/icons/icn-reset.svg).
- **Import or export settings:** On the Settings toolbar, select **Menu** ![](./images/icons/icn-menu.svg), then choose:
  - **Import:** Load saved settings into GCS.
  - **Export:** Save your current settings as a file.

## Sheet Settings Options

The following sheet settings are available:

| Setting                                               | Description                                                                                                                                                                       |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Damage Progression**                                | Choose a damage progression table. See **Damage Progression** below.                                                                                                              |
| **Show library source column**                        | Displays the library source column ![](./images/icons/icn-source.svg). See _Master Library Syncing_ in [Character Sheet Overview](Character%20Sheet%20Overview) for more details. |
| **Show page reference column**                        | Displays the Page Reference column ![](./images/icons/icn-pageReference.svg). See [Page References](Page%20References) for more details.                                          |
| **Show tech level (TL) column**                       | Displays the Tech Level (p. B22) column in the equipment list.                                                                                                                    |
| **Show legality class (LC) column**                   | Displays the Legality Class (p. B267) column in the equipment list.                                                                                                               |
| **Show trait modifier cost adjustments**              | Shows modifier cost in a Trait's notes.                                                                                                                                           |
| **Show equipment modifier cost & weight adjustments** | Shows cost and weight changes in Equipment notes. For example: `[x2 to original cost; x2 to base weight]`.                                                                        |
| **Show all weapons**                                  | Displays every weapon entry on your sheet, even if isn’t carried or equipped. Weapons from unequipped or uncarried items are marked as `(not carried)` or `(not equipped)`, as appropriate.                           |
| **Show spell ritual, cost & time adjustments**        | Displays casting details for spells (p. B237).                                                                                                                                    |
| **Show the title instead of the name in the footer**  | Displays the character’s title from the Description list instead of their name.                                                                                                   |
| **Use Multiplicative Modifiers**                      | Applies the optional rule for Multiplicative Modifiers (p. P102) which lets you total and apply enhancements, then total and apply limitations.                                   |
| **Use Half-State Defaults**                           | Applies the optional rule for Half-State Defaulting (PY65:30), which reduces the effect of very high attributes when defaulting on hard skills.                                   |
| **Use Modifying Dice + Adds**                         | Applies the optional rule (p. B269), converting damage adds to dice. Example: `2d+5` becomes `3d+1`.                                                                              |
| **Exclude unspent points from total**                 | If checked, your unspent [Character points](Character%20points) won't be included in the total.                                                                                   |
| **Show Lifting ST-based damage**                      | Displays damage based on Lifting ST.                                                                                                                                              |
| **Show IQ-based damage**                              | Displays IQ-based damage on the Basic Damage list (PY120:7).                                                                                                                      |
| **Units of Measurement (Length and Weight)**          | Switch between imperial and metric. Metric uses simplified conversions (1 yard = 1 meter) for readability. Internal calculations are always in imperial units.                    |
| **Where to display**                                  | Controls how to display user descriptions, modifiers, notes, and skill level adjustments. Options include tooltips, inline, both, or neither.                                     |
| **Page Settings**                                     | Sets default paper size, orientation, and margins. See **Page Settings** below.                                                                                                   |
| **Block Layout**                                      | Customizes which blocks appear on your sheet and their placement. See **Block Layout** below.                                                                                     |

## Damage Progression

Choose how damage scales with Strength.

> [!TIP]
> If you’re not sure which option to use, stick with **Basic Set**. The other tables are optional house-rules.

| Damage Progression Option                          | Description                                                                                                                                                                                                                                                     |
| -------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Basic Set**                                      | Standard GURPS damage table from B16.                                                                                                                                                                                                                           |
| **Knowing Your Own Strength**                      | An alternative rule from PY83:16 that smooths out high-ST damage scaling, making progression more gradual and balanced.                                                                                                                                         |
| **No School Gognard Damage**                       | A house-rule that reduces swing damage to narrow the gap with thrust. Intended for Dungeon Fantasy play. See [No School Grognard](https://noschoolgrognard.blogspot.com/2013/04/adjusting-swing-damage-in-dungeon.html?utm_source=chatgpt.com).                 |
| **Thrust = Swing-2**                               | Sets thrust damage equal to swing-2 across the table. A lightweight alternative to Knowing Your Own Strength that doesn’t change Basic Lift, ST cost, or other traits. Keeps standard ST progression while narrowing the thrust/swing gap.                      |
| **Swing = Thrust-2**                               | A house-rule that makes swing damage equal to thrust-2. This reduces swing’s dominance and keeps thrusting weapons more viable. See [Gaming Ballistic](https://gamingballistic.com/2020/12/04/df-eastmarch-boss-fight-and-house-rules/?utm_source=chatgpt.com). |
| **T Bone's New Damage for ST (option 1)**          | A linear ST-based damage progression (1d per 10 ST) from [T Bone’s Games Diner](https://www.gamesdiner.com/2009/10/new-st-damage/).                                                                                                                             |
| **T Bone's New Damage for ST (option 1, cleaned)** | Simplified version of Option 1.                                                                                                                                                                                                                                 |
| **T Bone's New Damage for ST (option 2)**          | Variant of the linear progression.                                                                                                                                                                                                                              |
| **T Bone's New Damage for ST (option 2, cleaned)** | Simplified version of Option 2.                                                                                                                                                                                                                                 |
| **Phoenix Flame D3**                               | House-rule replacing d6 with d3 for damage. Reduces swinginess, makes every ST level valuable, and rebalances swing vs. thrust. See [Phoenix Flame D3 Damage](https://mega.nz/folder/sK4ngTLQ?utm_source=chatgpt.com#Gw34p_WftL2iXNjZ1lBxwQ).                   |

## Page Settings

Adjust paper size, orientation, and margins.

> [!IMPORTANT]
> Page size names must be entered exactly as shown in the table.

| Page Name | Size                           |
| --------- | ------------------------------ |
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

You can also enter custom sizes in this format: `8.5in x 11in`.

## Block Layout

Customize which blocks appear on your character sheet and where.

- You can **remove blocks** so they don’t display.
- You can **add blocks** by entering their names.
- You can **place blocks side by side** by entering multiple names on the same line, separated by spaces.
- You **cannot move** fixed elements such as primary/secondary attributes, body type, or description.

> [!IMPORTANT]
> Block names must be entered exactly as shown in the table.

| Blocks Names            | Description                                      |
| ----------------------- | ------------------------------------------------ |
| `reactions`             | Reactions                                        |
| `conditional_modifiers` | Conditions                                       |
| `melee`                 | [Melee weapons](Melee%20and%20Ranged%20Weapons)  |
| `ranged`                | [Ranged weapons](Melee%20and%20Ranged%20Weapons) |
| `traits`                | [Traits](Traits)                                 |
| `skills`                | [Skills](Skills)                                 |
| `spells`                | [Spells](Spells)                                 |
| `equipment`             | Carried [Equipment](Equipment)                   |
| `other_equipment`       | Other [Equipment](Equipment)                     |
| `notes`                 | [Notes](Notes)                                   |

## Default Sheet Settings

You can change the default sheet settings for new characters in [Default Sheet Settings](Default%20Settings).

---

[Return to Home](Home)
