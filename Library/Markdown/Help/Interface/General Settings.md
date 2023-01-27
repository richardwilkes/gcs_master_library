[<< Back to Overview](./Overview.md "Overview")

# General Settings
These are generic application settings, and a few for new [character sheets](./Character%20Sheet.md "Character Sheet"), for features which would never change after character sheet creation.

Modifications can be saved as a [set](./Settings.md "Settings").

## Usage
**Settings -> General Settings ...**

Changes take effect immediately.

## Interface
### Tool Bar
- **[Reset](./Common%20Icon.md "Common Icon:Reset") ![](./img/power.png "Reset")** : return to reality
- **[Menu](./Common%20Icon.md "Common Icon:Menu") ( ![](./img/bars.png "Reset") )**
  - **[Import](./Settings.md "Import")** : Reads a JSON file with these values
  - **[Export](./Settings.md "Export")** : Writes a JSON file with these values
  - a list of all saved [Settings](./Settings.md "Settings") sets

## Fields
- **Default Player Name** : auto-fills to character sheet Player
- **Fill in initial description**:
  - Checked: Randomly fills the randomizable Identity and Description fields, Player name, and tech level
  - Not check: Doesn't do any of that
- **Add natural attacks to new sheets** : Pretty self explanatory
, default set is Bite, Kick and Punch
- **Initial points** :
  - 25 (child), 75-100 (n00b adventurer), 200 (seasoned adventurer) are typical
  - Set this to whatever you are going to create the most
  - The 100-150 points is accepted as a reasonable starting place by everyone, except Orks. Yes, those guys again.
  - This becomes the first [Points Record](./Points%20Record.md "Points Record") entry
- **Default Tech Level** : Set to what you create the most
- **Calendar** : only applies to random birthday values
- **List, Editor and Sheet Scale** : panel default zoom levels as a percentage
- **Max Auto Column Width** : Auto sizing of columns when opening lists
- **Image Export Resolution** : pixels per inch used in image exports (50 - 400)
- **Tooltip delay** : before showing up (0 - 30 seconds)
- **Tooltip dismiss** : time until vanishing into the nether (1 - 3600 seconds)
- **Scroll Wheel Multiplier** : Set higher for faster scrolling
 (0.0001 - 9999)
- **Paths** :
  - Click the icon to the right to copy the value to the clipboard
  - Settings Path: File containing GCS settings
  - Translations Path: Internationalization
  - Log Path: This might be needed to report a bug

### External PDF Viewer
Using Adobe Acrobat Reader as an example:\
**"\<path_to_exe>\ArcoRd32.exe" /A "page=$PAGE" "$FILE"**

- Enter the file path to the executable, not Adobe's street address.
- *$FILE* is a variable representing the full path to the PDF file.
- *$PAGE* is a variable representing the page number to open.
- Use quoting anywhere a space is or can be. I'm looking at you variables. You never know when a space will show up uninvited.

See [Page Reference](./Page%20Reference.md "Page Reference") to make this do something useful.
Also see [Page Reference Mapping](./Page%20Reference%20Mappings.md "Page Reference Mappings").

***Last updated for v5.7.0***