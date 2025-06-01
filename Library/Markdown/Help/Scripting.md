# Scripting

> Available in GCS 5.36+.

Some fields, such as notes, now support using Javascript to resolve their content. To enable this, the contents of the
field in question must start with `^^^`. Everything after will be parsed and interpreted as Javascript and the value
returned will be shown in the field. Note that you must explicitly return a value, e.g. `return 1 + 1`. Simply writing
`1 + 1` will not work correctly.

When your Javascript code is called, the following global objects will be available for you to use:

- `console`
- `entity`
- `fixed`
- `length`
- `ssrt`
- `weight`

Each section below documents what can be done with each of these top-level objects, as well as some other objects that
these contain.

## attribute

This object holds the data for a single attribute contained by an entity.

##### Properties

- `id: string`: The ID for this attribute.
- `kind: string`: The kind of attribute this refers to. One of "primary", "secondary", or "pool".
- `name: string`: The short name of the attribute.
- `fullName: string`: The long name of the attribute.
- `maximum: fixed`: The maximum value of the attribute.
- `current: fixed`: The current value of the attribute. For attributes other than "pool", this will always be the same as the maximum.
- `allowDecimal: boolean`: If false, only whole values will be present in the maximum and current fields.

## console

This object provides basic logging capabilities, similar to the standard Javascript console provided by web browsers.

##### Static Methods

- `log(val1: any, /* ..., */ valN: any)`: Logs a message to the GCS log file (or console, if GCS was started with the option to route logs to the console
instead).

## encumbrance

This object holds encumbrance-related data for an entity.

##### Properties

- `levelName: string`: The name of the current encumbrance level.
- `level: integer`: The current encumbrance level, a value from 0 to 4.
- `levelForSkills: integer`: The current encumbrance level with regards to skill usage, a value from 0 to 4.
- `moveFactor: fixed`: A multiplier to use on the character's Move due to load.
- `weightCarried: weight`: The weight being carried.
- `maximumCarry: weight`: The maximum weight that may be carried.
- `basicLift: weight`: The weight that can be lifted overhead with one hand in one second.
- `oneHandedLift: weight`: The weight that can be lifted overhead with one hand in two seconds.
- `twoHandedLift: weight`: The weight that can be lifted overhead with both hands in four seconds.
- `shoveAndKnockOver: weight`: The weight of an object that can be shoved and knocked over.
- `runningShoveAndKnockOver: weight`: The weight of an object that can be shoved and knocked over with a running start.
- `carryOnBack: weight`: The weight that can be carried slung across the back.
- `shiftSlightly: weight`: The weight that can be shifted slightly on a floor.

## entity

This object represents the current character sheet data.

##### Methods

- `exists(): boolean`: Returns true if this script is being run on a sheet.
- `attributes(): Array<attribute>`: Returns all attributes.
- `attribute(idOrName: string): attribute`: Returns the attribute that matches the given ID or name. IDs are checked first, then names. Names are compared case-insensitively.
- `traits(): Array<trait>`: Returns all enabled traits.
- `trait(name: string, includeEnabledChildren: boolean): Array<trait>`: Returns the enabled traits that match the given name, case-insensitively. If includeEnabledChildren is true, then the children field will be populated in each trait.
- `skills(): Array<skill>`: Returns all skills.
- `skill(name: string, specialization: string, includeChildren: boolean): Array<skill>`: Returns the skills that match the given name and specialization, case-insensitively. If includeChildren is true, then the children field will be populated in each skill.
- `spells(): Array<spell>`: Returns all spells.
- `spell(name: string, includeChildren: boolean): Array<spell>`: Returns the spells that match the given name, case-insensitively. If includeChildren is true, then the children field will be populated in each spell.
- `items(): Array<equipment>`: Returns all equipment with a quantity greater than 0.
- `item(name: string, includeChildren: boolean): Array<equipment>`: Returns the equipment with a quantity greater than 0 that match the given name, case-insensitively. If includeChildren is true, then the children field will be populated in each piece of equipment.
- `encumbrance(): encumbrance`: Returns the encumbrance data.
- `weightUnits(): weightUnit`: Returns the default weight units to use for the entity.
- `sizeModifier(): integer`: Returns the size modifier of the entity.

## equipment

This object holds data for equipment.

##### Properties

- `name: string`: The name.
- `quantity: fixed`: The quantity.
- `value: fixed`: The value of one of these items.
- `extendedValue: fixed`: The value of this item and any items it contains.
- `weight: weight`: The weight of one of these items.
- `extendedWeight: weight`: The weight of this item and any items it contains.
- `level: fixed`: The "level" of the item.
- `uses: integer`: The current "uses" value.
- `equipped: boolean`: If true, the item is equipped.
- `tags: Array<string>`: The associated tags.
- `children: Array<equipment>`: The contained children. May not be filled in if it wasn't requested.

## fixed

This object provides a fixed-point numeric data type, which is used for all potentially non-integer calculations within GCS so that various floating-point errors don't occur.

##### Static Properties

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

##### Static Methods

- `asInteger(value: fixed): integer`: Returns the value converted to an integer.
- `asFloat(value: float): float`: Returns the value converted to a float.
- `fromString(str: string): fixed`: Parses the string and returns the fixed value from it.
- `fromInteger(value: integer): fixed`: Returns the integer value converted to a fixed-point value.
- `fromFloat(value: float): fixed`: Returns the floating-point value converted to a fixed-point value.
- `applyRounding(value: fixed, roundDown: boolean): fixed`: Rounds a value in the positive direction if roundDown is false, or in the negative direction if roundDown is true, returning the result.

##### Methods

- `add(value: fixed): fixed`: Returns the result of adding the supplied value to this value.
- `sub(value: fixed): fixed`: Returns the result of subtracting the supplied value from this value.
- `mul(value: fixed): fixed`: Returns the result of multiplying the supplied value with this value.
- `div(value: fixed): fixed`: Returns the result of dividing this value by the supplied value.
- `mod(value: fixed): fixed`: Returns the remainder after subtracting all full multiples of the provided value from this value.
- `abs(): fixed`: Returns the absolute value of this value.
- `trunc(): fixed`: Returns this value with everything to the right of the decimal place truncated.
- `ceil(): fixed`: Returns the value rounded up to the nearest whole number.
- `round(): fixed`: Returns the nearest integer, rounding half away from zero.
- `min(value: fixed) fixed`: Returns the minimum of the provided value or this value.
- `max(value: fixed) fixed`: Returns the maximum of the provided value or this value.
- `inc(): fixed`: Returns this value incremented by 1.
- `dec(): fixed`: Returns this value decremented by 1.
- `string(): string`: Returns the text representation of this value.
- `stringWithSign(): string`: Returns the same value as `.string()`, but with a leading '+' if the value is positive.
- `comma(): string`: Returns a text representation of this value with commas separating every third digit before the decimal place.
- `commaWithSign(): string`: Returns the same value as `.comma()`, but with a leading '+' if the value is positive.

## length

This object provides handling of lengths.

##### Static Properties

- `feetAndInches: lengthUnit`: The feet and inches unit, which dynamically adjusts to one of three displays, depending on the value:
  1. Showing feet and inches, e.g. 5'9"
  2. Showing feet, e.g. 5'
  3. Showing inches, e.g. 3"
- `inch: lengthUnit`: The inches unit, represented as "in".
- `feet: lengthUnit`: The feet unit, represented as "ft".
- `yard: lengthUnit`: The yards unit, represented as "yd".
- `mile: lengthUnit`: The miles unit, represented as "mi".
- `centimeter: lengthUnit`: The centimeters unit, represented as "cm".
- `meter: lengthUnit`: The meters unit, represented as "m".
- `kilometer: lengthUnit`: The kilometers unit, represented as "km".

##### Static Methods

- `unitsFromString(str: string): lengthUnit`: Returns the length unit whose key matches `str`, or `length.feetAndInches` if there is no match.
- `fromString(value: string, defaultUnits: lengthUnit): length`: Returns a new `length` object by parsing the input string. If no units are present in the string, then `defaultUnits` is used. If `defaultUnits` isn't provided, uses `length.feetAndInches`.
- `fromInteger(value: integer, units: lengthUnit): length`: Returns a new `length` object. If no `units` are provided, uses `length.feetAndInches`.
- `fromFixed(value: fixed, units: lengthUnit): length`: Returns a new `length` object. If no `units` are provided, uses `length.feetAndInches`.
- `asFixedInches(value: length): fixed`: Returns the `length` as a `fixed` value of inches.

##### Methods

- `string(): string`: Returns the length formatted in feet and inches.

## skill

This object holds data for a skill.

##### Properties

- `name: string`: The name.
- `specializiation: string`: The specialization.
- `kind: string`: The kind of skill, one of "skill", "technique", or "group".
- `level: integer`: The computed level.
- `relativeLevel: integer`: The computed level relative to the controlling attribute.
- `attribute: string`: The attribute ID used with the skill.
- `difficulty: string`: The difficulty ID used with the skill, one of "e", "a", "h", "vh", or "w".
- `tags: Array<string>`: The associated tags.
- `children: Array<skill>`: The contained children. May not be filled in if it wasn't requested.

## spell

This object holds data for a spell.

##### Properties

- `name: string`: The name.
- `kind: string`: The kind of spell, one of "spell", "ritual magic spell", or "group".
- `level: integer`: The computed level.
- `relativeLevel: integer`: The computed level relative to the controlling attribute.
- `attribute: string`: The attribute ID used with the spell.
- `difficulty: string`: The difficulty ID used with the spell, one of "e", "a", "h", "vh", or "w".
- `college: Array<string>`: The associated colleges.
- `powerSource: string`: The power source.
- `spellClass: string`: The spell class.
- `resist: string`: The resistance check.
- `castingCost: string`: The casting cost.
- `maintenanceCost: string` The maintenance cost.
- `castingTime: string`: The casting time.
- `duration: string`: The duration it lasts.
- `ritualSkillName: string`: The name of the skill used as a base for ritual magic spells.
- `ritualPrereqCount: integer`: The number of prereqs a ritual magic spell has.
- `tags: Array<string>`: The associated tags.
- `children: Array<spell>`: The contained children. May not be filled in if it wasn't requested.

## ssrt

This object provides calculations on the Size and Speed/Range Table from Basic, page 550.

##### Static Methods

- `rangeModifier(value: length): integer`: Returns the range modifier for the given length.
- `sizeModifier(value: length): integer`: Returns the size modifier for the given length.

## lengthUnit

This object provides conversion of length values to specific units.

##### Methods

- `key(): string`: Returns the key representing this length unit.
- `format(value: length): string`: Returns a string representation of the length in the given units, e.g. "12 yd".
- `toInches(value: fixed): fixed`: Returns a value of this unit converted to inches.

## trait

This object holds data for a trait.

##### Properties

- `name: string`: The name.
- `kind: string`: The kind of trait, one of "trait", "group", "alternative abilities", "ancestry", "attributes", or "meta trait".
- `levels: fixed`: The levels, if any.
- `tags: Array<string>`: The associated tags.
- `children: Array<trait>`: The contained children. May not be filled in if it wasn't requested.

## weight

This object provides handling of weights.

##### Static Properties

- `pound: weightUnit`: The pounds unit, represented as "lb".
- `poundAlt: weightUnit`: An alternate pounds unit, represented as "#".
- `ounce: weightUnit`: The ounces unit, represented as "oz".
- `ton: weightUnit`: The tons unit, represented as "tn".
- `tonAlt: weightUnit`: An alternate tons unit, represented as "t".
- `kilogram: weightUnit`: The kilograms unit, represented as "kg".
- `gram: weightUnit`: The grams unit, represented as "g".

##### Static Methods

- `unitsFromString(str: string): weightUnit`: Returns the weight unit whose key matches `str`, or `weight.pound` if there is no match.
- `fromString(value: string, defaultUnits: weightUnit): weight`: Returns a new `weight` object by parsing the input string. If no units are present in the string, then `defaultUnits` is used. If `defaultUnits` isn't provided, uses `weight.pound`.
- `fromInteger(value: integer, units: weightUnit): weight`: Returns a new `weight` object. If no `units` are provided, uses `weight.pound`.
- `fromFixed(value: fixed, units: weightUnit): weight`: Returns a new `weight` object. If no `units` are provided, uses `weight.pound`.
- `asFixedPounds(value: weight): fixed`: Returns the `weight` as a `fixed` value of pounds.

##### Methods

- `string(): string`: Returns the weight formatted as pounds.

## weightUnit

This object provides conversion of weight values to specific units.

##### Methods

- `key(): string`: Returns the key representing this weight unit.
- `format(value: weight): string`: Returns a string representation of the weight in the given units, e.g. "12 kg".
- `toPounds(value: fixed): fixed`: Returns a value of this unit converted to pounds.
