You can adjust how GCS behaves using the **General Settings** menu.

For other settings options, see [Default Settings](Default%20Settings), [Sheet Settings](Sheet%20Settings), [Colors and Fonts](Colors%20and%20Fonts), and [Menu Keys](Menu%20Keys).

To open General Settings:

- Go to **Settings > General Settings**.

Changes are applied immediately. You don’t need to save.

## Managing Settings

- **Reset settings to defaults:** Select **Reset** ![](./images/icons/icn-reset.svg).
- **Import or export settings:** On the Settings toolbar, select **Menu** ![](./images/icons/icn-menu.svg), then choose:
  - **Import:** Load saved settings into GCS.
  - **Export:** Save your current settings as a file.

## Setting Options

The following settings are available.

| Setting                                     | Description                                                                                                                                                                      |
| ------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Default Player Name**                     | Sets the name that appears on new character sheets.                                                                                                                              |
| **Restore workspace arrangement on start**  | Reopens sheets, libraries, and documents from your last session when you restart GCS.                                                                                            |
| **Fill in initial description**             | Randomly fills the identity and description blocks on new [character sheets](Character%20Sheet%20Overview).                                                                      |
| **Group containers when sorting**           | Groups containers (folders) before libraries and lists, instead of strict alphabetical order.                                                                                    |
| **Add natural attacks to new sheets**       | Automatically adds Bite, Kick, and Punch as Melee Weapons on new character sheets.                                                                                               |
| **Initial click on text field selects all** | Highlights all text when you first click inside a field.                                                                                                                         |
| **Initial Points**                          | Sets starting points for a new character. See [Character points](Character%20Points).                                                                                            |
| **Default Tech Level**                      | Sets your most commonly used Tech Level (p. B22).                                                                                                                                |
| **Calendar**                                | Sets the calendar used to generate random birthdays (options: Gregorian, Golarion).                                                                                              |
| **Initial Scales (for various areas)**      | Sets default zoom values for lists, editors, sheets, and PDFs (for PDFs you can specify fit to width or fit to page).                                                            |
| **Max Auto Column Width**                   | Sets the maximum width columns can expand when auto-sizing.                                                                                                                      |
| **Monitor Resolution**                      | Sets resolution. If `0 ppi`, GCS uses your monitor’s native resolution. See **Monitor Resolution** below.                                                                        |
| **Image Export Resolution**                 | Sets resolution for exported images.                                                                                                                                             |
| **Max Execution Time**                      | Limits how long a script can run.                                                                                                                                                |
| **Tooltip Delay**                           | Sets how long to hover before a tooltip appears (0-30 seconds).                                                                                                                  |
| **Tooltip Dismissal**                       | Sets how long a tooltip remains visible (1-3600 seconds).                                                                                                                        |
| **Scroll Wheel Multiplier**                 | Adjusts scroll speed.                                                                                                                                                            |
| **Settings Path**                           | File location where GCS saves settings.                                                                                                                                          |
| **Translations Path**                       | File location where GCS saves translations.                                                                                                                                      |
| **Log Path**                                | File location where GCS saves logs.                                                                                                                                              |
| **External PDF Viewer**                     | Lets you use a different program to open PDFs. Keep blank to open PDFs with GCS. See **External PDF Settings** below.                                                            |
| **Interface Locale**                        | Changes the GCS language.                                                                                                                                                        |
| **Library Explorer Deep Search**            | If enabled, searches for individual items within libraries. For example, searching “Bow” highlights the Basic Set Equipment library. See [Library Explorer](Library%20Explorer). |
| **Use Separate Windows**                    | Opens different document types in separate windows (like running multiple GCS instances).                                                                                        |

## External PDF Settings

By default, PDFs for [Page References](Page%20References) open within GCS. You can set GCS to use your system’s PDF viewer (for example, Adobe Acrobat).

> [!IMPORTANT]
> You must use the executable (`.exe`) file path, not a shortcut path.

To use an external PDF viewer:

1. In **External PDF Viewer**, enter the executable path.
2. Append the following string to the path: `/A "page=$PAGE" "$FILE"`

> **_Example:_** Enter `C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe /A "page=$PAGE" "$FILE"`.

GCS will automatically replace:

- `$PAGE` with the referenced page number.
- `$FILE` with the correct PDF file, based on the **Page Reference Mappings** in [Page References](Page%20References).

To use GCS as the PDF viewer:

- Clear the **External PDF Viewer** field so it's blank.

## Monitor Resolution

This setting controls how GCS scales its interface based on your monitor’s pixel density (PPI). You usually won’t need to adjust this unless GCS appears scaled incorrectly.

Normally, GCS detects your monitor resolution automatically. However, on some systems, especially Windows setups with multiple monitors or custom scaling, the reported PPI can be inaccurate. When that happens, the interface or character sheets may appear too small or too large.

If you notice incorrect scaling:

1. Use [this online calculator](https://www.sven.de/dpi/) to find your monitor’s true PPI.
2. Enter that value in **Monitor Resolution**.
3. Restart GCS to apply the change.

> [!TIP]
> **Windows:** Right-click your desktop, select **Display settings**, and check the **Display resolution** value under **Scale and layout**. If your **Scale** setting is higher than 100%, try reducing the **Monitor Resolution** value slightly in GCS.
>
> **macOS:** Go to **System Settings > Displays**, then check your **Resolution** and **Scale** options. Choose **Default for display** or **Scaled** and note the resolution used.
>
> **Linux:** Open your display settings (for example, **Settings > Displays** in GNOME) and confirm your **Resolution** and **Scale** values.

---

[Return to Home](Home)
