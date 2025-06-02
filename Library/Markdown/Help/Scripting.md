# Scripting

> Available in GCS 5.36.0 and later.

Some fields, such as notes, support using Javascript to resolve their content. Versions of GCS prior to v5.36.0 used a
simple expression evaluator instead. Expressions from those old data files will be automatically transformed into the
equivalent Javascript.

When your Javascript code is called, the following globals will be available for you to use:

- `console`
- `dice`
- `entity`
- `fixed`
- `iff`
- `length`
- `Math.exp2`
- `signedValue`
- `ssrt`
- `weight`

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

### Methods for entity

- `attribute(idOrName: string): attribute`: Returns the attribute that matches the given ID or name. IDs are checked
  first, then names. Names are compared case-insensitively.
- `attributes(): Array<attribute>`: Returns all attributes.
- `currentEncumbrance(forSkills: boolean, returnMoveFactor: boolean): number`: Returns the current encumbrance modifier
  (a value from 0 to 4) or the move multiplication factor if 'returnMoveFactor' is true. If 'forSkills' is true, the
  modifier is adjusted to account for equipment that has been marked as not having its weight counting against skills.
- `encumbrance(): encumbrance`: Returns the encumbrance data.
- `exists(): boolean`: Returns true if this script is being run on a sheet.
- `extraDiceFromModifiers(): boolean`: Returns true if the Modifying Dice + Adds option from B269 is in use.
- `hasTrait(name: string): boolean`: Returns true if the named trait is present and enabled.
- `item(name: string, includeChildren: boolean): Array<equipment>`: Returns the equipment with a quantity greater than 0
  that match the given 'name', case-insensitively. If 'includeChildren' is true, then the children field will be
  populated in each piece of equipment.
- `items(): Array<equipment>`: Returns all equipment with a quantity greater than 0.
- `randomHeight(strength: number): number`: Returns a height in inches based on the given 'strength' using the chart
  from B18.
- `randomWeight(strength: number, shift: number): number`: Returns a weight in pounds based on the given 'strength'
  using the chart from B18. Adjusts appropriately for the traits Skinny, Overweight, Fat, and Very Fat, if present on
  the sheet. 'shift' causes a shift towards a lighter value if negative and a heavier value if positive, similar to
  having one of the traits Skinny, Overweight, Fat, and Very Fat applied, but is additive to them.
- `sizeModifier(): number`: Returns the size modifier of the entity.
- `skill(name: string, specialization: string, includeChildren: boolean): Array<skill>`: Returns the skills that match
  the given 'name' and 'specialization', case-insensitively. If 'includeChildren' is true, then the children field will
  be populated in each skill.
- `skills(): Array<skill>`: Returns all skills.
- `skillLevel(name: string, specialization: string, relative: boolean): number`: Returns the level of the skill with the
  given 'name' and 'specialization'. If 'relative' is true, returns the relative level instead.
- `spell(name: string, includeChildren: boolean): Array<spell>`: Returns the spells that match the given 'name',
  case-insensitively. If 'includeChildren' is true, then the children field will be populated in each spell.
- `spells(): Array<spell>`: Returns all spells.
- `trait(name: string, includeEnabledChildren: boolean): Array<trait>`: Returns the enabled traits that match the given
  'name', case-insensitively. If 'includeEnabledChildren' is true, then the children field will be populated in each
  trait.
- `traitLevel(name: string): number`: Returns the combined level of the enabled trait(s) with the given 'name', or -1 if
  not found.
- `traits(): Array<trait>`: Returns all enabled traits.
- `weaponDamage(name: string, usage: string): string`: Returns the weapon damage for the weapon entry that matches the
  given 'name' and 'usage', or an empty string if none is found.
- `weightUnits(): weightUnit`: Returns the default weight units to use for the entity.

## equipment

This object holds data for equipment.

### Properties for equipment

- `name: string`: The name.
- `quantity: number`: The quantity.
- `value: number`: The value of one of these items.
- `extendedValue: number`: The value of this item and any items it contains.
- `weight: number`: The weight in pounds of one of these items.
- `extendedWeight: number`: The weight in pounds of this item and any items it contains.
- `level: number`: The level of the item.
- `uses: number`: The current uses value.
- `equipped: boolean`: If true, the item is equipped.
- `tags: Array<string>`: The associated tags.
- `children: Array<equipment>`: The contained children. May not be filled in if it wasn't requested.

## fixed

This object provides a fixed-point numeric data type, which is used for all potentially non-integer calculations within GCS so that various floating-point errors don't occur. It is provided here so that you can do fixed-point calculations where needed.

### Static Properties for fixed

- `maxSafeMultiply: fixed`: The maximum value that can be safely multiplied without overflow.
- `maxValue: fixed`: The maximum value that a fixed value can hold.
- `minValue: fixed`: The minimum value that a fixed value can hold.
- `zero: fixed`: Convenience for the constant 0.
- `tenth: fixed`: Convenience for the constant 0.1.
- `eighth: fixed`: Convenience for the constant 0.125.
- `quarter: fixed`: Convenience for the constant 0.25.
- `half: fixed`: Convenience for the constant 0.5.
- `one: fixed`: Convenience for the constant 1.
- `two: fixed`: Convenience for the constant 2.
- `three: fixed`: Convenience for the constant 3.
- `four: fixed`: Convenience for the constant 4.
- `five: fixed`: Convenience for the constant 5.
- `ten: fixed`: Convenience for the constant 10.
- `hundred: fixed`: Convenience for the constant 100.
- `thousand: fixed`: Convenience for the constant 1000.

### Static Methods for fixed

- `asInteger(value: fixed): number`: Returns the value converted to an integer.
- `asFloat(value: fixed): number`: Returns the value converted to a float.
- `fromString(str: string): fixed`: Parses the string and returns the fixed value from it.
- `fromInteger(value: number): fixed`: Returns the integer value converted to a fixed-point value.
- `fromFloat(value: number): fixed`: Returns the floating-point value converted to a fixed-point value.
- `applyRounding(value: fixed, roundDown: boolean): fixed`: Rounds a value in the positive direction if 'roundDown' is
  false, or in the negative direction if 'roundDown' is true, returning the result.

### Methods for fixed

- `add(value: fixed): fixed`: Returns the result of adding the supplied value to this value.
- `sub(value: fixed): fixed`: Returns the result of subtracting the supplied value from this value.
- `mul(value: fixed): fixed`: Returns the result of multiplying the supplied value with this value.
- `div(value: fixed): fixed`: Returns the result of dividing this value by the supplied value.
- `mod(value: fixed): fixed`: Returns the remainder after subtracting all full multiples of the provided value from this
  value.
- `abs(): fixed`: Returns the absolute value of this value.
- `trunc(): fixed`: Returns this value with everything to the right of the decimal place truncated.
- `ceil(): fixed`: Returns the value rounded up to the nearest whole number.
- `round(): fixed`: Returns the nearest integer, rounding half away from zero.
- `min(value: fixed) fixed`: Returns the minimum of the provided value or this value.
- `max(value: fixed) fixed`: Returns the maximum of the provided value or this value.
- `inc(): fixed`: Returns this value incremented by 1.
- `dec(): fixed`: Returns this value decremented by 1.
- `string(): string`: Returns the text representation of this value.
- `stringWithSign(): string`: Returns the same value as '.string()', but with a leading '+' if the value is positive.
- `comma(): string`: Returns a text representation of this value with commas separating every third digit before the
  decimal place.
- `commaWithSign(): string`: Returns the same value as '.comma()', but with a leading '+' if the value is positive.

## iff

This is a top-level function.

- `iff(condition: boolean, trueValue: any, falseFalue: any): any`: Returns 'trueValue' if 'condition' is true, otherwise
  returns 'falseFalue'.

## length

This object provides handling of lengths.

### Static Properties for length

- `feetAndInches: lengthUnit`: The feet and inches unit, which dynamically adjusts to one of three displays, depending
  on the value:
  1. Showing feet and inches, e.g. 5'9"
  2. Showing feet, e.g. 5'
  3. Showing inches, e.g. 3"
- `inch: lengthUnit`: The inches unit, represented as 'in'.
- `feet: lengthUnit`: The feet unit, represented as 'ft'.
- `yard: lengthUnit`: The yards unit, represented as 'yd'.
- `mile: lengthUnit`: The miles unit, represented as 'mi'.
- `centimeter: lengthUnit`: The centimeters unit, represented as 'cm'.
- `meter: lengthUnit`: The meters unit, represented as 'm'.
- `kilometer: lengthUnit`: The kilometers unit, represented as 'km'.

### Static Methods for length

- `unitsFromString(str: string): lengthUnit`: Returns the length unit whose key matches 'str', or length.feetAndInches
  if there is no match.
- `fromString(value: string, defaultUnits: lengthUnit): length`: Returns a new length object by parsing the input
  string. If no units are present in the string, then 'defaultUnits' is used. If 'defaultUnits' isn't provided, uses
  length.feetAndInches.
- `fromInteger(value: number, units: lengthUnit): length`: Returns a new length object. If no 'units' are provided, uses
  length.feetAndInches.
- `fromFixed(value: fixed, units: lengthUnit): length`: Returns a new length object. If no 'units' are provided, uses
  length.feetAndInches.
- `fromFloat(value: number, units: lengthUnit): length`: Returns a new length object. If no 'units' are provided, uses
  length.feetAndInches.
- `asFixedInches(value: length): fixed`: Returns the 'length' as a fixed value of inches.

### Methods for length

- `string(): string`: Returns the length formatted in feet and inches.

## lengthUnit

This object provides conversion of length values to specific units.

### Methods for lengthUnit

- `key(): string`: Returns the key representing this length unit.
- `format(value: length): string`: Returns a string representation of the 'value' in these units, e.g. '12 yd'.
- `toInches(value: fixed): fixed`: Returns the 'value' in these units converted to inches.

## Math.exp2

This is actually just an addition to the standard Javascript Math object.

- `Math.exp2(value: number): number`: Returns 2 raised to the power of the `value`.

## signedValue

This is a top-level function.

- `signedValue(value: number): string`: Returns the 'value' as a string with a leading '+' if it is positive.

## skill

This object holds data for a skill.

### Properties for skill

- `name: string`: The name.
- `specializiation: string`: The specialization.
- `kind: string`: The kind of skill, one of 'skill', 'technique', or 'group'.
- `level: number`: The computed level.
- `relativeLevel: number`: The computed level relative to the controlling attribute.
- `attribute: string`: The attribute ID used with the skill.
- `difficulty: string`: The difficulty ID used with the skill, one of 'e', 'a', 'h', 'vh', or 'w'.
- `tags: Array<string>`: The associated tags.
- `children: Array<skill>`: The contained children. May not be filled in if it wasn't requested.

## spell

This object holds data for a spell.

### Properties for spell

- `name: string`: The name.
- `kind: string`: The kind of spell, one of 'spell', 'ritual magic spell', or 'group'.
- `level: number`: The computed level.
- `relativeLevel: number`: The computed level relative to the controlling attribute.
- `attribute: string`: The attribute ID used with the spell.
- `difficulty: string`: The difficulty ID used with the spell, one of 'e', 'a', 'h', 'vh', or 'w'.
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
- `children: Array<spell>`: The contained children. May not be filled in if it wasn't requested.

## ssrt

This object provides calculations on the Size and Speed/Range Table from Basic, page 550.

### Static Methods for ssrt

- `modifier(length: number, units: string, forSize: bool): number`: Calculates the number of yards from the given
  'length' and 'units', then returns the size modifier if 'forSize' is true or the range modifier if it is false.
- `modifierToYards(ssrtValue: number): number`: Returns the yards for the given 'ssrtValue'.
- `rangeModifier(yards: number): number`: Returns the range modifier for the given number of 'yards'.
- `sizeModifier(yards: number): number`: Returns the size modifier for the given number of 'yards'.

## trait

This object holds data for a trait.

### Properties for trait

- `name: string`: The name.
- `kind: string`: The kind of trait, one of 'trait', 'group', 'alternative abilities', 'ancestry', 'attributes', or 'meta trait'.
- `levels: fixed`: The levels, if any.
- `tags: Array<string>`: The associated tags.
- `children: Array<trait>`: The contained children. May not be filled in if it wasn't requested.

## weight

This object provides handling of weights.

### Static Properties for weight

- `pound: weightUnit`: The pounds unit, represented as 'lb'.
- `poundAlt: weightUnit`: An alternate pounds unit, represented as '#'.
- `ounce: weightUnit`: The ounces unit, represented as 'oz'.
- `ton: weightUnit`: The tons unit, represented as 'tn'.
- `tonAlt: weightUnit`: An alternate tons unit, represented as 't'.
- `kilogram: weightUnit`: The kilograms unit, represented as 'kg'.
- `gram: weightUnit`: The grams unit, represented as 'g'.

### Static Methods for weight

- `unitsFromString(str: string): weightUnit`: Returns the weight unit whose key matches 'str', or weight.pound if there
  is no match.
- `fromString(value: string, defaultUnits: weightUnit): weight`: Returns a new weight object by parsing the input
  'value'. If no units are present in the string, then 'defaultUnits' is used. If 'defaultUnits' isn't provided, uses
  weight.pound.
- `fromInteger(value: number, units: weightUnit): weight`: Returns a new 'weight' object. If no 'units' are provided,
  uses weight.pound.
- `fromFixed(value: fixed, units: weightUnit): weight`: Returns a new 'weight' object. If no 'units' are provided, uses
  weight.pound.
- `fromFloat(value: number, units: weightUnit): weight`: Returns a new 'weight' object. If no 'units' are provided, uses
  weight.pound.
- `asFixedPounds(value: weight): fixed`: Returns the 'value' as a fixed-point number of pounds.

### Methods for weight

- `string(): string`: Returns the weight formatted as pounds.

## weightUnit

This object provides conversion of weight values to specific units.

### Methods for weightUnit

- `key(): string`: Returns the key representing this weight unit.
- `format(value: weight): string`: Returns a string representation of the 'value' in the given units, e.g. '12 kg'.
- `toPounds(value: fixed): fixed`: Returns the 'value' of this unit converted to pounds.

---

***Last updated for v5.36.0***
