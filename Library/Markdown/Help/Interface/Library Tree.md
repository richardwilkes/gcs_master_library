[<< Back to Overview](./Overview.md "Overview")

# Library Tree
The Library Tree is the far left panel in GCS. It displays all the files in the library directories.

The Master Library is created and maintained along with the GCS application. Don't change anything in there. The entire Master Library is removed and replaced when the Master Library is updated, and when you aren't looking.

The User Library supports the same structure and features as the Master Library, but is never altered during updates.

The Master library files contain the various pre-defined objects that define a character's capacity to create chaos, such as [traits](./Trait.md "Trait") and [skills](./Skill.md "Skill"). Just drag and drop them onto [character sheets](./Character%20Sheet.md "Character Sheet"). Yes, using GCS is a Skill, and no, you can't afford it yet. Or you wouldn't be reading this.

User libraries contain all the stuff users create that SJGames didn't think up yet.

However, the Library Tree also holds, character sheets, [templates](./Character%20Template.md "Character Template"), [markdown](./Markdown.md "Markdown") and more.

By default, these directories are:

**\<user_home>/GCS/Master Library/**\
**\<user_home>/GCS/User Library/**

The library tree can be hidden by collapsing the divider bar, giving more work space, but it will always be there.

*All library data is [unlinked](./Unlinked%20Data.md "Unlinked Data") when used on character sheet, template or other libraries.*

## Usage
### New
There can be only one. Library tree that is.

### Add
**File -> New \<type> Library**

Creates a new library of \<type> and opens it for editing. This is only a magic, library looking thing, hanging out in memory. Once saved, it becomes a library file, listed in the Library Tree.

### Open
For *files* in the Library Tree:\
**\<double-click item>**

Double clicking a library or folder expands or collapses it.

For files being imported, from a friend or that guy that hangs out under the bridge:\
**Open -> \<select_file>**

The open file can then be saved into the Library Tree.

### Modify
Selected Library:\
**\<context_menu> -> Configure**

### Save
Saving is done from whatever the library is, not within the Library Tree. To access the functions of GCS, save new files in the Library Tree directory structure. And *not* in the Master.

### Delete
Selected item:\
**\<context_menu> -> Delete**

Only removes the Library Tree listing. When removing entire libraries, the disk files are left intact. When removing anything else, the files are deleted.

## Interface
### Tool Bar
Some tools do not function on all of the Library Tree items.

- **View Scale** : as a percentage
- **Expand/Collapse ( ![](./img/tree.png "Expand/Collapse") )** : all branches in all libraries
- **Add Library ( ![](./img/plus.png "Add") )** : adds a new library directory
- **Update ( ![](./img/write.png "Update") )** : update a library from a remote repository
- **Release Notes ( ![](./img/doc.png "Release Notes") )** : repository release notes
- **Configure ( ![](./img/gear.png "Configure") )** : configure a library settings
- **Add Folder ( ![](./img/folder.png "Add Folder") )** : add a directory at current level
- **Rename ( ![](./img/signs.png "Configure") )** : rename selected item
- **Delete ( ![](./img/trash.png "Configure") )** : delete selected item
- **Search** : finds character strings within the library tree names; does not search library file contents

### Context Menu
Each item has a context menu that duplicates a few of the tool bar functions. Most of them are basic, file management options. Library repository items have extended functionality.

Options:
- **Show on Disk** : open whatever crazy place it was put in a host OS file manager
- plus some options form the tool bar

### Icons
Icons are based on file extensions.

- **Character Sheet ( ![](./img/lib-char.png "Character Sheet" ) )** : .gcs
- **Character Template ( ![](./img/lib-chartemp.png "Character Template" ) )** : .gct
- **Directory Closed ( ![](./img/lib-close.png "Directory Closed" ) )** : double click to open
- **Directory Open ( ![](./img/lib-open.png "Directory Open" ) )** : double click to close
- **Equipment Modification ( ![](./img/lib-equipmentmod.png "Equipment Modification" ) )** : .eqm
- **Equipment ( ![](./img/lib-equipment.png "Equipment" ) )** : .eqp
- **Image ( ![](./img/lib-img.png "Image" ) )** : .gif, .jpg, .png ...
- **Markdown ( ![](./img/lib-markdown.png "Markdown" ) )** : .md
- **Note ( ![](./img/lib-note.png "Note" ) )** : .not
- **PDF ( ![](./img/lib-pdf.png "PDF" ) )** : um ... .pdf, who knew?
- **Skill ( ![](./img/lib-skill.png "Skill" ) )** : .skl
- **Spell ( ![](./img/lib-spell.png "Markdown" ) )** : .spl
- **Trait Modification ( ![](./img/lib-traitmod.png "Trait Modification" ) )** : .adm
- **Trait ( ![](./img/lib-trait.png "Markdown" ) )** : .adq

## Fields
### Library Settings
- **Name** : as displayed in the library tree
- **GitHub Account** : account name to use for a remote repository
- **GitHub Access Token** : password
- **Repository** : GitHub repository name or local directory
- **Path** : local directory to put the library

***Last updated for v5.7.0***