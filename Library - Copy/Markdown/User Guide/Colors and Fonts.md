You can customize the appearance of your [character sheet](Character%20Sheet%20Overview) with **colors** and **fonts**. This allows you to highlight important sections, match your group’s style, or just make your sheet easier to read.

For other settings options, see [General Settings](General%20Settings).

To open the **Colors** and **Fonts** settings:

- **Colors:** Go to **Settings > Colors.**
- **Fonts:** Go to **Settings > Fonts**.

## Managing Settings

You can manage color and font settings the same way as other settings:

- **Reset settings to defaults:** Select **Reset** ![](./images/icons/icn-reset.svg).
- **Import or export settings:** On the Colors or Fonts toolbars, select **Menu** ![](./images/icons/icn-menu.svg), then choose:
  - **Import:** Load saved settings into GCS.
  - **Export:** Save your current settings as a file.

## Colors

You can change the colors of your character sheet in GCS.

### Color mode

At the top of the window, choose how GCS uses **light** and **dark** colors:

- **Light:** Always use light backgrounds and text.
- **Dark:** Always use dark backgrounds and text.
- **Automatic:** Follow your computer’s system preference.

### Theme Colors

Theme colors define the look of the GCS interface. For each, you can set separate values for **light mode** and **dark mode**.

| Theme Color | Description                                  |
|-------------|----------------------------------------------|
| **Surface** | The background color of most windows.        |
| **Header**  | Background of headers and section titles.    |
| **Banding** | Alternating row backgrounds for readability. |
| **Focus**   | Highlight color for selected items.          |
| **Tooltip** | Background of tooltips.                      |
| **Error**   | Highlight for errors.                        |
| **Warning** | Highlight for warnings.                      |

### Sheet Block Tints

You can also apply **tints** to specific blocks on the character sheet (for example, [Traits](Traits), [Skills](Skills), or [Spells](Spells)).

- Each block can have its own color.
- **Alpha** (transparency) must be greater than `0` to enable the tint.
- Higher Alpha numbers **do not** result in lighter or darker colors.

Examples:

- Light blue tint for **Skills** to make them stand out.
- Grey tint for **Equipment** to separate gear from abilities.

### Choosing a color

When you select a color box, the **color picker** appears.

You can set colors in several ways:

- By adjusting **Red, Green, Blue, Alpha** values (0-255 or %).
- Using **Hue, Saturation, Brightness** sliders.
- Typing a **CSS color code** (`rgba(255,0,0,0.5)`).

The preview panel shows both the **new color** and the **original color**.

Next to every color option is a **reset button** ![](./images/icons/icn-reset.svg). Select this to return that color to the GCS default

## Fonts

The **Fonts** settings lets you control the font family, size, weight, and style used throughout GCS.

Each section of the character sheet (labels, fields, notes, etc.) can have its own font settings.

### Font uses

| Field                                        | Description                                                   |
|----------------------------------------------|---------------------------------------------------------------|
| **System / System (Emphasized)**             | Fonts used by GCS interface text.                             |
| **Label**                                    | Text labels on the character sheet.                           |
| **Field / Secondary Fields**                 | Values entered by the user in the GCS interface.              |
| **Keyboard**                                 | Font for keyboard input text.                                 |
| **Page Primary / Secondary Fields & Labels** | Values entered by the user (like attributes, skill levels).   |
| **Page Primary / Secondary Labels**          | Labels for different blocks on your sheet.                    |
| **Page Primary / Secondary Footer**          | Fonts for page footers on your sheet.                         |
| **Base Markdown**                            | Font for rendered [Markdown](Markdown%20Guide) text in Notes. |
| **Monospaced**                               | Used for scripting or fixed-width text.                       |

### Font options

Each font entry lets you choose:

- **Size** (in points, e.g., `10`).
- **Font Family** (e.g., _Roboto_, _DejaVu Sans Mono_). Depends on what fonts are installed on your system.
- **Weight**: _Light_, _Regular_, _Medium_, _Bold_, or _Black_.
- **Style**: _Upright_ or _Italic_.
- **Variant**: Standard (default) or other available options.

Next to every font option is a **reset button** ![](./images/icons/icn-reset.svg). Select this to return that font to the GCS default

> [!IMPORTANT]
> Changing fonts usually requires restarting GCS to display content correctly.

---

[Return to Home](Home)
