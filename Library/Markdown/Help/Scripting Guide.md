# Scripting Guide

> Available in GCS 5.36.0 and later.

Some fields, such as notes, support using Javascript to resolve their content. Versions of GCS prior to v5.36.0 used a
simple expression evaluator instead. Expressions from those old data files will be automatically transformed into the
equivalent Javascript.

Fields that are intended to resolve to a number and either contain a number or a script. Fields that are intended to
resolve to text, however, must have the scripting portion(s) wrapped in tags, like this:

```
My ST + DX is <script>$st + $dx</script> and my name is <script>entity.name</script>.
```

When your Javascript code is called, the following globals will be available for you to use:

- `console`
- `dice`
- `entity`
- `iff`
- `Math.exp2`
- `measure`
- `self`
- `signedValue`

In addition, any attributes you've defined for the sheet are available as globals using their ID prefixed with a dollar
sign, e.g. `$st` refers to the Strength attribute.

Each section below documents what can be done with each of these globals, as well as some other objects that these
contain.

## attribute

This object holds the data for a single attribute contained by an entity. For convenience, if you pass the attribute as
a value, it will resolve as if you had passed it's maximum value. e.g. `$hp + 1` when the current HP is 8 with a maximum
of 10, it would resolve to a value of 11 (10 + 1).

### Properties for attribute

- `id: string`: The ID for this attribute.
- `kind: string`: The kind of attribute this refers to. One of 'primary', 'secondary', or 'pool'.
- `name: string`: The short name of the attribute.
- `fullName: string`: The long name of the attribute.
- `maximum: number`: The maximum value of the attribute.
- `current: number`: The current value of the attribute. For attributes other than 'pool', this will always be the same
  as the maximum.
- `isDecimal: boolean`: If false, only whole values will be present in the maximum and current fields.

## console

This object provides basic logging capabilities, similar to the standard Javascript console provided by web browsers.

### Static Methods for console

- `log(val1: any, /* ..., */ valN: any)`: Logs a message to the GCS log file (or console, if GCS was started with the
  option to route logs to the console instead).

## dice

This object provides dice specification manipulation utlities.

### Static Methods for dice

- `add(left: string, right: string): string`: Adds two dice specifications together and returns a string with the new
  specification. For example, 'dice.add("1d+1", "1d-2")' would return '2d-1'.
- `count(diceSpec: string): number`: Returns the number of dice in the 'diceSpec'. For example, 'dice.count("2d+3")'
  would return '2'.
- `from(sides: number): string`: Returns a dice specification with the specified sides, 1 for the count and multiplier,
  and 0 for the modifier. For example, 'dice.from(4)' would return '1d4'.
- `from(count: number, sides: number): string`: Returns a dice specification with the specified 'count' and 'sides', 0
  for the modifiers, and 1 for the multiplier. For example, 'dice.from(2, 4)' would return '2d4'.
- `from(count: number, sides: number, modifier: number): string`: Returns a dice specification with the specified
  'count', 'sides', and 'modifier', and 1 for the multiplier. For example, 'dice.from(2, 4, -1)' would return '2d4-1'.
- `from(count: number, sides: number, modifier: number, multiplier: number): string`: Returns a dice specification with
  the specified 'count', 'sides', 'modifier' and 'multiplier'. For example, 'dice.from(2, 4, -1, 2)' would return
  '2d4-1x2'.
- `modifier(diceSpec: string): number`: Returns the modifier in the 'diceSpec'. For example, 'dice.modifier("2d+3")'
  would return '3'.
- `multiplier(diceSpec: string): number`: Returns the multiplier in the 'diceSpec'. For example,
  'dice.multiplier("2d+3x4")' would return '4'.
- `roll(diceSpec: string, extraDiceFromModifiers: boolean): number`: Returns the result of rolling the 'diceSpec'. If
  'extraDiceFromModifiers' is true, it will behave as if the Modifying Dice + Adds option from B269 is in use.
- `sides(diceSpec: string): number`: Returns the number of sides on each die in the 'diceSpec'. For example,
  'dice.sides("2d+3")' would return '6'.
- `subtract(left: string, right: string): string`: Subtracts 'right' from 'left' and returns a string with the new
  specification. For example, 'dice.subtract("3d+1", "2d+2")' would return '1d-1'.

## encumbrance

This object holds encumbrance-related data for an entity.

### Properties for encumbrance

- `levelName: string`: The name of the current encumbrance level.
- `level: number`: The current encumbrance level, a value from 0 to 4.
- `levelForSkills: number`: The current encumbrance level with regards to skill usage, a value from 0 to 4.
- `moveFactor: number`: A multiplier to use on the character's Move due to load.
- `weightCarried: number`: The number of pounds being carried.
- `maximumCarry: number`: The maximum number of pounds that may be carried.
- `basicLift: number`: The number of pounds that can be lifted overhead with one hand in one second.
- `oneHandedLift: number`: The number of pounds that can be lifted overhead with one hand in two seconds.
- `twoHandedLift: number`: The number of pounds that can be lifted overhead with both hands in four seconds.
- `shoveAndKnockOver: number`: The number of pounds of an object that can be shoved and knocked over.
- `runningShoveAndKnockOver: number`: The number of pounds of an object that can be shoved and knocked over with a
  running start.
- `carryOnBack: number`: The number of pounds that can be carried slung across the back.
- `shiftSlightly: number`: The number of pounds that can be shifted slightly on a floor.

## entity

This object represents the current character sheet data.

### Properties for entity

- `exists: boolean`: true if this script is being run on a sheet.
- `playerName: string`: The player's name.
- `name: string`: The entity's name.
- `title: string`: The entity's title.
- `organization: string`: The entity's organization.
- `religion: string`: The entity's religion.
- `techLevel: string`: The entity's tech level.
- `gender: string`: The entity's gender.
- `age: string`: The entity's age.
- `birthday: string`: The entity's birthday.
- `eyes: string`: The entity's eyes.
- `hair: string`: The entity's hair.
- `skin: string`: The entity's skin.
- `handedness: string`: The entity's handedness.
- `displayHeightUnits: string`: The height units that should be used for display.
- `displayWeightUnits: string`: The weight units that should be used for display.
- `heightInInches: number`: The entity's height, in inches.
- `weightInPounds: number`: The entity's weight, in pounds,
- `sizeModifier: number`: The entity's size modifier.
- `extraDiceFromModifiers: boolean`: true if the Modifying Dice + Adds option from B269 is in use.

### Methods for entity

- `attribute(idOrName: string): attribute`: Returns the attribute that matches the given ID or name. IDs are checked
  first, then names. Names are compared case-insensitively.
- `attributes(): Array<attribute>`: Returns all attributes.
- `currentEncumbrance(forSkills: boolean, returnMoveFactor: boolean): number`: Returns the current encumbrance modifier
  (a value from 0 to 4) or the move multiplication factor if 'returnMoveFactor' is true. If 'forSkills' is true, the
  modifier is adjusted to account for equipment that has been marked as not having its weight counting against skills.
- `encumbrance(): encumbrance`: Returns the encumbrance data.
- `equipment(): Array<equipment>`: Returns the top-level carried equipment with a quantity greater than 0.
- `findEquipment(name: string, tag: string): Array<equipment>`: Returns the carried equipment that match the given
  'name' and has the given 'tag', case-insensitively. When matching, an empty or undefined value passed in will match
  everything. Note that only equipment with a quantity greater than 0 is considered and if all parents of that equipment
  must also have a quantity greater than 0.
- `findSkills(name: string, specialization: string, tag: string): Array<skill>`: Returns the enabled skills that match
  the given 'name', the given 'specialization', and have the given 'tag', case-insensitively. When matching, an empty or
  undefined value passed in will match everything.
- `findSpells(name: string): Array<spell>`: Returns the enabled spells that match the given 'name', the given
  'specialization', and have the given 'tag', case-insensitively. When matching, an empty or undefined value passed in
  will match everything.
- `findTraits(name: string, tag: string): Array<trait>`: Returns the enabled traits that match the given 'name' and have
  the given 'tag', case-insensitively. When matching, an empty or undefined value passed in will match everything.
- `hasTrait(name: string): boolean`: Returns true if the named trait is present and enabled.
- `randomHeightInInches(strength: number): number`: Returns a height in inches based on the given 'strength' using the
  chart from B18.
- `randomWeightInPounds(strength: number, shift: number): number`: Returns a weight in pounds based on the given
  'strength' using the chart from B18. Adjusts appropriately for the traits Skinny, Overweight, Fat, and Very Fat, if
  present on the sheet. 'shift' causes a shift towards a lighter value if negative and a heavier value if positive,
  similar to having one of the traits Skinny, Overweight, Fat, and Very Fat applied, but is additive to them.
- `skills(): Array<skill>`: Returns the top-level enabled skills.
- `skillLevel(name: string, specialization: string, relative: boolean): number`: Returns the level of the skill with the
  given 'name' and 'specialization'. If 'relative' is true, returns the relative level instead.
- `spells(): Array<spell>`: Returns the top-level enabled spells.
- `traitLevel(name: string): number`: Returns the combined level of the enabled trait(s) with the given 'name', or -1 if
  not found.
- `traits(): Array<trait>`: Returns the top-level enabled traits.
- `weaponDamage(name: string, usage: string): string`: Returns the weapon damage for the weapon entry that matches the
  given 'name' and 'usage', or an empty string if none is found.

## equipment

This object holds data for equipment.

### Properties for equipment

- `name: string`: The name.
- `quantity: number`: The quantity.
- `techLevel: string`: The tech level of the item.
- `legalityClass: string`: The legality class of the item.
- `level: number`: The level of the item.
- `uses: number`: The current uses value.
- `maxUses: number`: The maximum uses value.
- `weightIgnoredForSkills: boolean`: If true, this item's weight doesn't count against skill usage.
- `equipped: boolean`: If true, the item is equipped.
- `container: boolean`: If true, this item is a container.
- `hasChildren: boolean`: If true, this item has children.
- `tags: Array<string>`: The associated tags.

### Methods for equipment

- `children(): Array<equipment>`: The contained children.
- `extendedValue(): number`: The value of this item and any items it contains.
- `extendedWeight(): number`: The weight in pounds of this item and any items it contains.
- `find(name: string, tag: string): Array<equipment>`: Returns the equipment within the hierarchy of this equipment that
  match the given 'name' and has the given 'tag', case-insensitively. When matching, an empty or undefined value passed
  in will match everything.
- `value(): number`: The value of one of these items.
- `weight(): number`: The weight in pounds of one of these items.

## iff

This is a top-level function.

- `iff(condition: boolean, trueValue: any, falseFalue: any): any`: Returns 'trueValue' if 'condition' is true, otherwise
  returns 'falseFalue'.

## Math.exp2

This is actually just an addition to the standard Javascript Math object.

- `Math.exp2(value: number): number`: Returns 2 raised to the power of the `value`.

## measure

This object provides measurement utilities.

Valid units for lengths are:

- in
- ft
- ft_in
- yd
- mi
- cm
- m
- km

Valid units for weights are:

- oz
- lb
- \#
- tn
- t
- g
- kg

### Static Methods for measure

- `formatLength(inches: number, toUnits: string): string`: Formats a length (in inches) into a string with the given
  units.
- `lengthToInches(value: number, fromUnits: string): number`: Converts a length value of the given units into inches.
- `stringLengthToInches(str: string, defaultUnits: string): number`: Converts a string containing a length into inches.
  If no units are found in the string, then 'defaultUnits' will be used to interpret the value.
- `formatWeight(pounds: number, toUnits: string): string`: Formats a weight (in pounds) into a string with the given
  units.
- `weightToPounds(value: number, fromUnits: string): number`: Converts a weight value of the given units into pounds.
- `stringWeightToPounds(str: string, defaultUnits: string): number`: Converts a string containing a weight into pounds.
  If no units are found in the string, then 'defaultUnits' will be used to interpret the value.
- `rangeModifier(yards: number): number`: Converts the given yards into a range modifier.
- `sizeModifier(yards: number): number`: Converts the given yards into a size modifier.
- `modifier(length: number, units: string, forSize: boolean): number`: Converts the given length into either a range
  modifier (if 'forSize' is false) or a size modifier (if 'forSize' is true).
- `modifierToYards(modifier: number): number`: Converts a range or size modifier into yards.

## self

This will be set to the object that the script is attached to. Note that in some cases, this will be `undefined`, such
as for scripts attached to attributes, attribute thresholds, ancestries, and top-level notes. In some other cases, the
object will actually be the containing object, if any, such as for trait modifiers and equipment modifiers.

## signedValue

This is a top-level function.

- `signedValue(value: number): string`: Returns the 'value' as a string with a leading '+' if it is positive.

## skill

This object holds data for a skill.

### Properties for skill

- `id: string`: The object ID.
- `parentID: string`: The parent's object ID.
- `name: string`: The name.
- `specializiation: string`: The specialization.
- `kind: string`: The kind of skill, one of 'skill', 'technique', or 'group'.
- `attribute: string`: The attribute ID used with the skill.
- `difficulty: string`: The difficulty ID used with the skill, one of 'e', 'a', 'h', 'vh', or 'w'.
- `points: number`: The number of points in the skill.
- `tags: Array<string>`: The associated tags.
- `container: boolean`: If true, this item is a container.
- `hasChildren: boolean`: If true, this item has children.

### Methods for skill

- `children(): Array<skill>`: The contained children.
- `find(name: string, specialization: string, tag: string): Array<skill>`: Returns the skills within the hierarchy of
  this skill that match the given 'name', the given 'specialization', and have the given 'tag', case-insensitively. When
  matching, an empty or undefined value passed in will match everything.
- `level(): number`: The computed level.
- `relativeLevel(): number`: The computed level relative to the controlling attribute.

## spell

This object holds data for a spell.

### Properties for spell

- `id: string`: The object ID.
- `parentID: string`: The parent's object ID.
- `name: string`: The name.
- `kind: string`: The kind of spell, one of 'spell', 'ritual magic spell', or 'group'.
- `level: number`: The computed level.
- `relativeLevel: number`: The computed level relative to the controlling attribute.
- `attribute: string`: The attribute ID used with the spell.
- `difficulty: string`: The difficulty ID used with the spell, one of 'e', 'a', 'h', 'vh', or 'w'.
- `points: number`: The number of points in the spell.
- `college: Array<string>`: The associated colleges.
- `powerSource: string`: The power source.
- `spellClass: string`: The spell class.
- `resist: string`: The resistance check.
- `castingCost: string`: The casting cost.
- `maintenanceCost: string` The maintenance cost.
- `castingTime: string`: The casting time.
- `duration: string`: The duration it lasts.
- `ritualSkillName: string`: The name of the skill used as a base for ritual magic spells.
- `ritualPrereqCount: number`: The number of prereqs a ritual magic spell has.
- `tags: Array<string>`: The associated tags.
- `container: boolean`: If true, this item is a container.
- `hasChildren: boolean`: If true, this item has children.

### Methods for spell

- `children(): Array<spell>`: The contained children.
- `find(name: string, tag: string): Array<spell>`: Returns the spells within the hierarchy of this spell that match the
  given 'name' and have the given 'tag', case-insensitively. When matching, an empty or undefined value passed in will
  match everything.
- `level(): number`: The computed level.
- `relativeLevel(): number`: The computed level relative to the controlling attribute.

## trait

This object holds data for a trait.

### Properties for trait

- `id: string`: The object ID.
- `parentID: string`: The parent's object ID.
- `name: string`: The name.
- `kind: string`: The kind of container, one of 'group', 'alternative abilities', 'ancestry', 'attributes', or 'meta trait'.
- `levels: number`: The levels, if any.
- `tags: Array<string>`: The associated tags.
- `container: boolean`: If true, this trait is a container.
- `hasChildren: boolean`: If true, this trait has children.

### Methods for trait

- `children(): Array<trait>`: The contained children.
- `find(name: string, tag: string): Array<trait>`: Returns the traits within the hierarchy of this trait that match the
  given 'name' and have the given 'tag', case-insensitively. When matching, an empty or undefined value passed in will
  match everything.

---

***Last updated for v5.36.0***
