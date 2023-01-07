[<< Back to Overview](./Overview.md "Overview")

# Attributes
Attributes are the mathematical basis for the entire GURPS character system. Doing anything here will alter the GURPS attribute system and impact all the algorithms. You probably should just click Reset and close the panel.

If you still want to make changes, continue here ...

This is [unlinked](./Unlinked%20Data.md "Unlinked Data") and stored with each character sheet. Changes must be saved. Modifications can be saved as a [set](./Settings.md "Settings").

Initial values are found in [Default Attributes](./Default%20Attributes.md "Default Attributes").

## Usage
**Settings -> Sheet Settings ...**

The menu bar option is available when a [Character Sheet](./Character%20Sheet.md "Character Sheet") is active.

## Interface
### Tool Bar
- **[Save](./Common%20Icon.md "Common Icon:Save") ( ![](./img/check.png "Save") )** : save and close
- **[Cancel](./Common%20Icon.md "Common Icon:Cancel") ( ![](./img/no.png "Cancel") )** : cancel and close
- **[Add](./Common%20Icon.md "Common Icon:Add") ( ![](./img/plus.png "Add") )** : add an attribute
- **[Reset](./Common%20Icon.md "Common Icon:Reset") ![](./img/power.png "Reset")** : return to reality
- **[Menu](./Common%20Icon.md "Common Icon:Menu") ( ![](./img/bars.png "Reset") )**
  - **[Import](./Settings.md "Import")** : Reads a JSON file with these values
  - **[Export](./Settings.md "Export")** : Writes a JSON file with these values
  - a list of all saved [Settings](./Settings.md "Settings") sets

## Fields
- **ID** : variable name, must be unique
- **Attribute type** :
  - Numbers (integer or decimal)
  - Separators (horizontal bars)
  - Pool (range of numbers)
- **Short Name** : the full name, but shorter
- **Full Name** : the short name, but longer
- **Base Value** : where it starts out
- **Cost per Point** : increment/decrement cost
- **SM Reduction** : Size modifier cost change

### Tools
Each attribute has a set of tool icons:
- **[Move](./Common%20Icon.md "Common Icon:Move") ( ![](./img/handle.png "Move") )** : to reorder the attributes (click and drag).
- **[Delete](./Common%20Icon.md "Common Icon:Delete") ( ![](./img/trash.png "Delete") )** : to delete the attribute.
- **[Add](./Common%20Icon.md "Common Icon:Add") ( ![](./img/plus.png "Add") )** : to add a pool threshold (range limit), if the type is "Pool".

## Related
[Character Sheet](./Character%20Sheet.md "Character Sheet")

***Last updated for v5.7.0***