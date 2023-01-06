[<< Back to Overview](./Overview.md "Overview")

# Page Reference Mappings
Page Reference Mappings link references, in used with [Page Reference](./Page%20Reference.md "Page Reference") fields, to external PDF files and pages.

Mappings are used with [Page Reference](./Page%20Reference.md "Page Reference") and the [External PDF Viewer](./General%20Settings.md "General Settings") setting.

This map is global. If different games need different maps, that needs to be accounted for in the page references.

## Usage
Most of the work is done in the reference fields.

### Modify
The only change that can be made is to alter the global leading page count.

### Delete
Use the trash can ( ![](./img/trash.png "Delete") ) to the right.

## Interface
### Tool Bar
- **[Reset](./Common%20Icon.md "Common Icon:Reset") ( ![](./img/power.png "Reset") )** : just like new
- **[Menu](./Common%20Icon.md "Common Icon:Menu") ( ![](./img/bars.png "Menu") )**
  - **[Import](./Settings.md "Import")** : Reads a JSON file with these values
  - **[Export](./Settings.md "Export")** : Writes a JSON file with these values
  - A list of any saved [Settings](./Settings.md "Settings") sets

## Fields
- **Name** : map name
- **Offset** : for this map, add this number of pages to all references
- **Filename** : name only, no path

The offset is used to account for leading pages, or if there is something wrong with the PDF that it can't manage to count pages correctly. 'Cause that never happens. The $PAGE variable for each map will adjust by this amount.

### Tools
Each line entry has this entire tool set:
- **[Delete](./Common%20Icon.md "Common Icon:Delete") ( ![](./img/trash.png "Delete") )** : to delete the map
- **[Edit](./Common%20Icon.md "Common Icon:Edit") ( ![](./img/pen.png "Edit") )** : opens a file selection panel to modify the setting

***Last updated for v5.7.0***