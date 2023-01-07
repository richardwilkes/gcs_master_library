[<< Back to Overview](./Overview.md "Overview")

# Character Templates
Templates are collections of elements from all the possible types. They consist of [traits](./Trait.md "Trait"), [skills](./Skill.md "Skill"), [spells](./Spell.md "Spell"), [Equipment](./Equipment.md "Equipment") and even a [Note](./Note.md "Note") or ten. Templates can represent races, job training, gear sets, grimoires, and more.

A template is *applied* to a character. Depending on the contents, the template may present [mod](./Mods.md "Mods") dialogs. After handling mod potions, the various template elements are added to the character sheet. Once complete, the character sheet is [no longer connected](./Unlinked%20Data.md "Unlinked Data") to the template.

## Building a Template
- Create a new template
- Add traits, skills, spells, equipment and notes, as needed
- Modify element [mods](./Mods.md "Mods"), as needed
- Save the template in the [User Library](./Library%20Tree.md "Library Tree")

This really is that easy. Well, to be fair, containers can get complex. Test templates with blank character sheets, *THEN* use it on your character.

**Fancy Tip:** Add all the elements of a template to a top level [container](./Container.md "Container"), even sub-containers. Name the top level container after the template (e.g: Dwarf, GSG9, Mental Patient). When the template is applied, all the elements are added to the character sheet in containers with the template's name.

In [templates](./Character%20Template.md "Character Template"), a substitution question is created by using the notation *@\<comment>@*. The comment is [posed](./Mods.md "Mods") when the template is applied. The result is placed wherever the notation is found. This is a common usage with the Specialization field.

## Usage
Using a Character Template is the exact same as using a Character Sheet, except what is noted here. See [Character Sheet](./Character%20Sheet.md "Character Sheet") for detail on adding, modifying, saving, etc.

### New
**File -> New Character Template**

What looks like the lower half of the character sheet will appear. Empty.

### Open
Same as a character sheet.

### Modify
Templates are modified the same as Character Sheets.

As elements are added, element [mod](./Mods.md "Mods") dialogs do not occur. The element is added 'as is'. The assumption is that the dialogs will be presented and resolved when the template is applied. If that is desired, then just move along.

To pre-select mods, edit the element and make the changes. This is useful if all the options are the same for a set of target characters (e.g. a language, job skills, hatred of bagels).

On template application, anything with *modifiers* still presents the dialogs, but the choices can be pre-selected. Completed *substitutions* are not presented.

Containers are where all the advanced functionality and fancy footwork is done. Note that, the container doesn't always stick around, depending on how it is configured. See [Containers](./Container.md "Container") for details.

**Fancy Tip:** Add a Note to the template, with the text: \<template_name> vX.X. If the template is modified, update the version number. When the template is applied, the note is copied to the character sheet and shows the template version used for that character.

### Save
**File -> Save**\
**File -> Save As...**

Templates are separate files with a .gct extension. Save them in the User [Library Tree](./Library%Tree.md "Library Tree") some place.

### Apply
Both of these require a character sheet to be the active panel.

Library Tree:\
**\<template_context_menu> -> Apply Template to Character Sheet**

Menu Bar:\
**Edit -> Apply Template to Character Sheet**

### Close
As Character Sheet

### Delete
As Character Sheet

## Interface
### Tool Bar
- **View scale** : As a percentage
- **Apply ( ![](./img/stamp.png "Apply") )** : Apply to character sheet
  - No sheet open, does nothing
  - One open, applies to the character sheet
  - More than one, asks which to use

## Fields
Just like the character sheet:
- **[Trait](./Trait.md "Trait")**
- **[Skill/Technique](./Skill.md "Skill")**
- **[Spell](./Spell.md "Spell")**
- **[Equipment](./Equipment.md "Equipment")**
- **[Note](./Note.md "Note")**

## Related
[Library Tree](./Library%20Tree.md "Library Tree")
[Character Sheet](./Character%20Sheet.md "Character Sheet")

***Last updated for v5.7.0***