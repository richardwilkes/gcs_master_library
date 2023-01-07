[<< Back to Overview](./Overview.md "Overview")

# Character Sheet
A character sheet is pretty much the whole point to this program. An electronic, automated, GURPS Character Sheet. This will save so much time, you'll be able to learn to cook donuts and speak Norwegian. Unless noted, when referencing the *Character Sheet*, it includes the displayed, exported and printed character sheets.

If you object to donuts or Norwegians, you can always use [this](http://www.sjgames.com/gurps/resources/CharacterSheet.pdf "The hard way"). And a pencil. Good luck.

## Building a Character
The process is the same as in GURPS Basic Set Characters you bought (nudgenudgewinkwink). See B10.

- Create a new character sheet
- Set character point value
- Apply required [templates](./Character%20Template.md "Character Template")
- Set attributes
- Add [traits](./Trait.md "Trait")
- Add [skills](./Skill.md "Skill")

Just that easy. Yeeeep.

## Usage
GURPS is designed by [these guys](http://www.sjgames.com/gurps). For the meaning and purpose of the entire game system, they can provide all the answers to any possible questions. And no doubt it's just that easy to go there and ask. *No doubt*. And while there, ask about Vehicles 4e.

Only GCS, the program by [this guy](https://gurpscharactersheet.com/), and it's functions are discussed here.

As with all windowing systems, there are multiple ways to things. These will get things going.

### New
**File -> New Character Sheet**

Depending on [General Settings](./General%20Settings.md "General Settings") and [Default Sheet Settings](./Default%20Sheet%20Settings.md "Default Sheet Settings"), a panel will appear with stuff in it.

### Open
**File -> Open**

Use the dialog to find the file.

See Usage: Save.

### Modify
Select the character sheet to modify:
- Add
  - **Item -> New \<element_type>**
  - **\<context_menu> -> New \<element_type>**
  - Drag and drop from a library (a red box appears where it can be placed)

- Edit (Select the element)
  - **Edit -> Open Detail Editor**
  - **\<context_menu> -> Open Detail Editor**
  - Double click the element

- Duplicate (Select the element)
  - **Edit -> Duplicate**
  - **\<context_menu> -> Duplicate**

- Delete (Select the element)
  - **Edit -> Delete**
  - **\<context_menu> -> Delete**
  - Press 'Del'. It might say 'delete', but that's a pretty long word for such a little key.

When adding elements, some present dialogs to get user input for [mods](./Mods.md "Mods") (e.g: Riding skill which requires specialization, Language trait requires a specialization and modifiers). Substitutions are presented as a field that needs completion. Modifications are a checklist of variables. Set the values and select Ok. Select Cancel to dismiss the dialog, but that likely leaves the element and character incomplete. Edit the element to complete the selections.

Group elements by adding containers to the blocks and then elements to the containers. In character sheets, containers just sit there, containing stuff. The true *Power Of The Container* comes from [Character Templates](./Character%20Template.md "Character Template"). See [Container](./Container.md "Container") for details.

### Save
**File -> Save**\
**File -> Save As...**

Character sheets have a .gcs extension and can be stored anywhere. Which is exactly where you won't be able to find it, if you don't stay organized.

**Fancy Tip:** Save characters in the User Library for better file management, double click opening, and a bobblehead icon ( ![](./img/bobblehead.png "Bobblehead") ).

### Close
**File -> Close**

An unsaved file with get a save option dialog before closing.

### Export
**File -> Export To...**

See [Export](./Export.md "Export") for details.

### Delete
If the character sheet has not been saved:\
**Click the icon ( ![](./img/x.png "Close") ) on the character sheet tab**

If already saved in a library:\
**library file context menu -> Delete**

Otherwise, the file needs to be deleted with the OS file manager.

## Interface
### Tool bar
- **View scale** : As a percentage
- **Sheet settings ( ![](./img/sliders.png "Sheet Setting") )** : See [Sheet Settings](./Sheet%20Settings.md "Sheet Settings")
- **Attributes ( ![](./img/print.png "Attributes") )** : See [Attributes](./Attributes.md "Attributes")
- **Body Type ( ![](./img/dude.png "Body Type") )** : See [Body Type](./Body%20Type.md "Body Type")
- **Calculators ( ![](./img/calc.png "Calculator") )** : Opens panel to character calculators

The calculators are for Jumping, Throwing and Hiking. The results are based in character sheet settings and calculator options.

## Fields
*Almost all character sheet data is [unlinked](./Unlinked%20Data.md "Unlinked Data").*

Some fields are [free-form data](./Free-Form%20Data.md "Free-Form Data") and some are formatted. Some of the formats depend on the sheet settings. Some fields are calculated and can't be directly changed. Some fields are lists. To *sum* it up, there are a lot of fields.

None of these fields are required, but many auto populate or complain if you remove the value. The file will save regardless. The filename is not linked to any field value. Character sheets use .gcs extensions by default.

The Identity and Description fields, with the randomize icon ( ![](./img/random.png "Randomize") ), can be randomly filled manually by clicking the icon, or automatically with Default Sheet Settings. Don't worry, it's random data appropriate to the field, not random hieroglyphs, a red dot, and a couple beeps.

### Portrait
Double click to add or change a picture. Select a file, don't just draw on the screen, and select Open. Or just drag and drop.

Remove the picture:\
**Select Edit -> Clear Portrait**

### Identity
These are all [free-form](./Free-Form%20Data.md "Free-Form Data") fields. Hard return won't work.

### Miscellaneous
The dates are automated. The Player name is free form.

### Points
This is a calculated break down of available, unspent, and used character points. The calculation works on the given total. Click [edit](./Common%20Icon.md "Common Icon:Edit") ( ![](./img/pen-dark.png "Common Icon:Edit") ), in the title, to alter point total and [Points Record](./Points%20Record.md "Points Record").

### Description
Height, Weight, Size, and TL are formatted fields. The rest are free-form.

### Primary Attributes
These are formatted fields and are positive integers. Changing, or not changing, these is part of building a character.

### Secondary Attributes
All of these are calculated from the Primary Attributes. Most can be changed as part of the character build process. Again, positive integers are highly recommended.

### Damage Table
That's not the title. The title will whatever the name of the character's body type. But, it's a damage table. It is all calculated, based on body type, armor, and more. It can't be directly changed.

### Encumbrance, Move & Dodge
Automatically calculated and can't be directly changed.

The bag icon ( ![](./img/bag.png "Encumbrance") ) to the left indicates the current encumbrance, based on [Carried Equipment](./Carried%20Equipment.md "Carried Equipment").

### Basic Damage
Automatically calculated and can't be directly changed.

### Lifting & Moving Things
Automatically calculated and can't be directly changed.

### Point Pools
Automatically calculated. Changing the first number reflect the characters current health and fatigue. ... if you happen to be playing with a computer in front of you. Nerd. 

Changing the second number adds either Fatigue Points (B16) or Hit Points (B16).

### Reaction
This list is populated by trait and skill choices and can not be directly changed.

### Condition
This list is populated by trait and skill choices and can not be directly changed.

### Melee Weapon
This list is populated by traits and [Carried Equipment](./Carried%20Equipment.md "Carried Equipment"). It can not be directly changed.

### Ranged Weapon
This list is populated by traits and [Carried Equipment](./Carried%20Equipment.md "Carried Equipment"). It can not be directly changed.

### Trait
A list of advantages, disadvantages, and quirks. The context menu and menu bar allows modification of this list.

See [Trait](./Trait.md "Trait") for details on trait elements and modifications.

### Skill/Technique
A list of skills and techniques. The context menu and menu bar allow modification of this list.

See [Skill](./Skill.md "Skill") for details on skill and technique elements and modifications.

### Spell
A list of spells. The context menu and menu bar allow modification of this list.

See [Spell](./Spell.md "Spells") for details on spell elements and modifications.

### Carried Equipment
A list of equipment in the characters pockets. You bought a pack, right? The context menu and menu bar allow modification of this list.

See [Carried Equipment](./Carried%20Equipment.md "Carried Equipment") for details on equipment elements and modifications.

### Other Equipment
A list of *stuff*. The context menu and menu bar allow modification of this list. This is stuff the character has someplace, and not on them at the moment. It does not count towards encumbrance, melee or ranged weapons.

See [Other Equipment](./Other%20Equipment.md "Other Equipment") for details on equipment elements and modifications.

### Note
This is a list of [Note](./Note.md "Note") elements. Add these to the character sheet directly or through a template. These notes are intended to relate to the character, campaign, game play, or player. A note about the game, as opposed to [Notes](./Notes.md "Notes").

## Related
[These guys](http://www.sjgames.com/gurps/) 

***Last updated for v5.7.0***