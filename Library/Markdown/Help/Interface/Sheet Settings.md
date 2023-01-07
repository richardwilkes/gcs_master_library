[<< Back to Overview](./Overview.md "Overview")

# Sheet Settings
Sheet Settings alter display and calculation options for the [Character Sheet](./Character%20Sheet.md "Character Sheet"). They are [stored individually](./Unlinked%20Data.md "Unlinked Data"), with each character sheet. The initial values are found in [Default Sheet Settings](./Default%20Sheet%20Settings.md "Default Sheet Settings"), which is part of the GCS configuration file. Modifications can be saved as a [set](./Settings.md "Settings").

## Usage
**Settings -> Sheet Settings ...**

The menu bar option is available when a character sheet is active. Changes take effect immediately.

## Interface
### Tool Bar
- **[Reset](./Common%20Icon.md "Common Icon:Reset") ( ![](./img/power.png "Reset") )** 
: puts everytCommon%20Icondefault, even you
- **[Menu](.Common%20Icon.md "Common Icon:Menu") ( ![](./img/bars.png "Menu") )** 
: Opens the tool bar menu
  - **[Import](./Settings.md "Settings:Import")** : Reads a JSON file with these values
  - **[Export](./Settings.md "Settings:Export")** : Writes a JSON file with these values
  - Any saved [Settings](./Settings.md "Settings") sets

## Fields
- **Damage Progression** : sets an alternative damage systems (default: Basic Set)
- **Show *'xyz'* cost adjustments** : displays modifiers in-line with 'xyz', for you math whizzes
- **Show the title instead of the name in the footer** : does this really need an explanation?
- **Use Multiplicative Modifiers** : a GURPS Powers thing, go read the book
- **Use Modifying Dice + Adds** : an optional damage rule
- **Exclude unspent points from total** : This related to the [points block](./Points.md "Points"). Consider, is a *Bob, the Great*, really that great with unused points? Does a bear pee in the woods if no one's there to hear?
- **Length Units** : Metric or Imperial on various scales; use whatever you're use to
- **Weight Units** : Metric or Imperial on various scales; get your finger off the scale
- **Where to display 'xyz'** : these allows the positioning of some bits to other bits
- **Page Settings** : Used in printing and exporting
- **Block Layout** : Arrangement of named blocks on the character sheet
  - block names are case-insensitive but otherwise immutable
  - blocks are arranged in any combination of two side by side, or in a single column
  - all blocks will all always be there, by your layout choice or GCS's

## Parent
[Character Sheet](./Character%20Sheet.md "Character Sheet")

***Last updated for v5.7.0***