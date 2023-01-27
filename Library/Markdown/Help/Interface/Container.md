[<< Back to Overview](./Overview.md "Overview")

# Container
Containers are used to group related or similar skills, racial traits, or to organize inventory into pockets, because you forgot to buy a backpack. For the functionality of GCS, a containers biggest benefit is to direct the actions of templates. Containers are added directly to the [Character Sheet](./Character%20Sheet.md "Character Sheet") or [Character Template](./Character%20Template.md "Character Template").

In the character sheet, containers pretty much just sit there. Holding stuff. There are exceptions (e.g.: Alternative Abilities, equipment container modifiers). As part of a template, a container can either just hold stuff, or perform actions when the template is applied.

Containers are displayed in the Character Sheet as a named sub-grouping of elements.

## Characteristics
### Nesting
Containers nest to a depth greater than your patience to try and set them up.

Nesting with Template Choice set *can* work. Mixing nested Count and Points settings can also work. A very complex nesting might end up as documented requirement, rather than anything GCS will enforce.

When Template Choice is set to Count or Points, the container point cost is *the sum of all possible points*. The actual cost is unknown until selections are made. Using Not Applicable means the sum is what the container will cost.

*Note: This is valid through version 5.5.2. Future versions will count as "required points", rather than "total points". This should improve the usability of nested containers. This also alters rule 3 and the results of example 3 below.*

The basic rules:
1. Once the current rule is satisfied, Ok will continue.
2. Future rules do not impact current rules.
3. For option selection, containers are 1 count and total points, not containers.

Example 1:
- boxA (pick 3)
  - trait1
  - trait2
  - boxB (pick 1)
    - trait3
    - trait4

For boxA, select trait1, trait2 and boxB. Three options have been selected, Ok to continue. BoxB is then presented to pick 1. This works out. In this example, the level one rule is pretty much pointless, since there are only 3 items. But, if you don't select them, you can't continue, so it might be useful to force traits, or spells, or something.

Example 2:
- boxA (pick 3)
  - trait1
  - trait2
  - trait5
  - boxB (pick 1)
    - trait3
    - trait4

Trait5 has been added to boxA. Select traits 1, 2 and 5 satisfies the rule, and GCS has no requirement for selecting boxB. As it was not selected, boxB will not be presented. That may or may not be what is desired.

Example 3:
- boxA (pick 3 pts)
  - trait1 1pt
  - trait2 1pt
  - boxB (pick 1 pt)
    - trait3 1pt
    - trait4 1pt

Selecting trait1, trait2 and boxB will not satisfy the requirement because boxB counts as 2 points. Select 1 trait and boxB will allow the selection to continue.

### Class
- Equipment Container => [Equipment](./Equipment.md "Equipment")
- Note Container => [Note](./Note.md "Note")
- Skill Container => [Skill](./Skill.md "Skill")
- Spell Container => [Spell](./Spell.md "Spell")
- Trait Container => [Trait](./Trait.md "Trait")
- and so on ...

## Usage
The destination list must be active, or use the lists' context menu.

Containers use the [Detail Editor](./Detail%20Editor.md "Detail Editor").

### New
- **Item -> New \<type> Container**
- **\<context_menu> -> New \<type> Container**

This adds a new container and opens it in the Detail Editor.

### Add
Containers, and their entire contents, can be dragged and dropped from any source of the correct type. Red highlighting indicates appropriate destinations.

### Modify
- **Edit -> Open Detail Editor**
- **\<context_menu> -> Open Detail Editor**

### Duplicate
Select the container:
- **Edit -> Duplicate**
- **\<context menu> -> Duplicate**

This duplicates the container and all contents.

### Delete
Select the container:
- **Edit -> Delete**
- **\<context menu> -> Delete**
- **Press the delete key**

This deletes the container and all contents.

## Fields
Containers, regardless of the block they are in, function the same. However, the fields available vary basis on their parent block (type of container). All the fields are described here.

In some cases, containers have fields that are the same as the elements they hold. For the most part these are display only fields and do not affect calculations (e.g.: Trait containers have a Self Control field).

- **Name** : every box should have a name
- **[Notes](./Notes.md "Notes")**
- **[VTT Notes](./VTT%20Notes.md "Notes")**
- **[User Description](./User%20Description.md "User Description")** : trait only
- **[Tags](./Tags.md "Tags")**
- **Enabled** : Effects the container and all contents, see [State Toggle](./State%20Toggle.md "State Toggle")
- **Self-Control Roll** : See B121
- **CR Adjustment** : see one line up
- **Container Type** : see below
- **Ancestry** : see below
- **Template Choices** : see below
- **[Page Reference](./Page%20Reference.md "Page Reference")** : links to PDFs! Yay!

### Container Type
- *Group* is the default and a name only feature. It just keeps the contents together.
- *Meta-trait* containers are useful for containing meta-traits. This might seem obvious, but if it isn't done, the meta-traits might get lost in the list of other traits. And, without one of the related traits, the entire meta-trait is likely invalid. This is a name only feature, there is no effect on calculations.
- *Race* type counts against race points. It also activates the Ancestry feature.
- *Alternative Abilities* setting applies to all elements in the container. If the traits are removed from the container, the alternate rules no longer apply.
- *Attributes* makes all the contained objects count against attribute points

### Ancestry
This effects the way randomized fields are filled. The catch is that the character sheet must already exist to apply the template. This means that after the template is applied or the Race container is created, the randomization must be done again manually. This feature will expand in future versions.

The use of randomized data is set in [General Settings](./General%20Settings.md "General Settings") and changed on the [character sheet's](./Character%20Sheet.md "Character Sheet") randomize buttons.

### Template Choices
This field set is used to set the operation when the [Template](./Character%20Template.md "Character Template") is applied. This only occurs if the container is part of a template.

The first field is the requirement type:
- Not Applicable: no operation is done (default)
- Count: the number of elements
- Points: the point value of the elements

Second field is the operator:
- is anything: any value or no value (default)
- is: must equal this amount
- is not: can not equal this amount
- is at least: minimum amount
- is at most: maximum amount

Third field is a numeric value for the count or points. Blank by default.

Using Count or Points causes the settings to display as part of the container title information.

The three defaults means the template container and all its contents are duplicated to the
character sheet. Selecting Count or Points will duplicate the selections to the character sheet *without* the container.

## Parent
[Equipment](./Equipment.md "Equipment")
[Note](./Note.md "Note")
[Skill](./Skill.md "Skill")
[Spell](./Spell.md "Spell")
[Trait](./Trait.md "Trait")

***Last updated for v5.7.0***