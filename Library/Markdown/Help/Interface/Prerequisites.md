[<< Back to Overview](./Overview.md "Overview")

# Prerequisites
Prerequisites is a list of requirements to qualify for [Equipment](./Equipment.md "Equipment")
, [Skills](./Skill.md "Skill")
, [Spells](./Spell.md "Spell")
, or [Traits](./Trait.md "Trait")
 (e.g.: having at least one leg to kick). Prerequisites are in the block labeled *"Prerequisites"*. Look around a bit. It's there.

The Prerequisites list is similar to the [Features](./Features.md "Features") list. Each rule is like building a sentence. The difference here is that Prerequisites can nest sub lists and use a logical *"and"* or *"or"*. And the lists can nest deeper than you have time for.

Prerequisites are edited directly in the block.

If the prerequisites have not been met, the related element has a red, error flag.

## Prerequisite Tree

- Root List *(and/or)*
  - Prerequisite 
  - Prerequisite
  - List *(and/or)*
    - Prerequisite
    - Prerequisite

A list can hold any number of prerequisites and sub-lists. Each list is either "requires all of" (all items on the list must be true) or "requires at least one of" (one item on the list must be true).

The first rule on all lists is a technology level requirement. By default the requirement is *"any technology level"* which is always true. But the technology level requirement doesn't count for the lists *and/or* requirement, regardless of how it is set. It is more like *technology level requirement* AND *the entire rest of the list*.

New items are added to the top. Sub-lists are at the bottom. Relax. Breathe. Order doesn't matter. Also, the root list can't be removed.

### Example
- Tech Level requirement (and) *all of*
  - must have trait dan
  - must have trait carol
  - Tech Level requirement (and) *at least one of*
    - must have trait bob
    - must have trait alice

With traits, dan and carol, and bob *or* alice, the prerequisite is meet.

**( Dan *AND* Carol *AND* ( Bob *OR* Alice ) )**

A complete list of prerequisites can be technology levels, attributes, skills, spells, weights, a curling iron, how much money you have in your pocket (Ok, maybe not ...), all at various amounts and on sub-lists. Obviously, things can get complicated pretty quick.

## Usage
### Add
To add a prerequisite, click the plus ( ![](./img/plus.png "Add") ).

To add a sub list, click the three dots ( ![](./img/dots.png "Add List") ).

### Modify
Just push all the little buttons and flip the fields around. It'll be fine.

### Delete
Trash cans ( ![](./img/trash.png "Delete") ).

Deleting a list deletes everything in the list and all sub lists it contains.

## Interface
### Tools
Each list has:
- **Add ( ![](./img/plus.png "Add") )**
- **Add list ( ![](./img/dots.png "add list") )**
- **Delete ( ![](./img/trash.png "Delete") )**

Each prerequisite has:
- **Delete ( ![](./img/trash.png "Delete") )**

## Parent
[Equipment](./Equipment.md "Equipment")
[Skill](./Skill.md "Skill")
[Spell](./Spell.md "Spell")
[Trait](./Trait.md "Trait")

***Last updated for v5.7.0***