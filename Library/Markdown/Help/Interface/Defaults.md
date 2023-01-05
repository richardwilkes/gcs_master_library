# Defaults
Defaults are a list of skills or attributes a new skill level will use by default (B170). Training and character points take it from there. Almost all skills default to an attribute or another skill, or ten. Some skills do not default. Try Judo untrained and even the white belts will laugh at you.

Defaults also applies to Melee Weapon Usage and Range Weapon Usage, because ... those are skills.

## Usage
### Add
The plus icon ( ![](./img/plus.png "Add") ) adds a rule to the bottom of the list. Stay calm. Order doesn't matter, so it's Ok.

### Delete
Each rule has a trash can ( ![](./img/trash.png "Delete") ) next to it, to delete that rule.

### Modify
Edit the fields directly in the list.

## Interface
### Tools
- **Add ( ![](./img/plus.png "Add") )** : adds a line item
- **Delete ( ![](./img/trash.png "Delete") )** : deletes a line item

## Fields
- **Type** : source
- **Name** : skill name
- **Specialization** : skill specialization
- **Modifier** : signed integer, difference from source value

Name and specialization are case insensative strings, which are only active when *Type* is *Skill*.

## Parent
[Melee Weapon Usage](./Melee%20Weapon%20Usage.md "Melee Weapon Usage")
[Range Weapon Usage](./Range%20Weapon%20Usage.md "Range Weapon Usage")
[Skill](./Skill.md "Skill")
