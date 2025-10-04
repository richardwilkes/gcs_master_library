# Scripting: Entity

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object represents the current character sheet data.

| Property | Type | Value | Availability
| --- | --- | --- | ---
| exists | boolean | True if this script is being run on a sheet. If this is false, all other properties will be undefined and only the `randomHeightInInches` and `randomWeightInPounds` methods will be defined (see below). | GCS 5.36+
| playerName | string | The player’s name. | GCS 5.36+
| name | string | The character’s name. | GCS 5.36+
| title | string | The character’s title. | GCS 5.36+
| organization | string | The character’s organization. | GCS 5.36+
| religion | string | The character’s religion. | GCS 5.36+
| techLevel | string | The character’s Tech Level. | GCS 5.36+
| gender | string | The character’s gender. | GCS 5.36+
| age | string | The character’s age. | GCS 5.36+
| birthday | string | The character’s birthday. | GCS 5.36+
| eyes | string | The character’s eyes. | GCS 5.36+
| hair | string | The character’s hair. | GCS 5.36+
| skin | string | The character’s skin. | GCS 5.36+
| handedness | string | The character’s primary hand. | GCS 5.36+
| heightInInches | number | The character’s height, in inches. | GCS 5.36+
| weightInPounds | number | The character’s weight, in inches. | GCS 5.36+
| displayHeightUnits | string | The height units that should be used for display. | GCS 5.36+
| displayWeightUnits | string | The weight units that should be used for display. | GCS 5.36+
| sizeModifier | number | The character’s Size Modifier. | GCS 5.36+
| liftingStrength | number | The character’s ST for lifting purposes. | GCS 5.36+
| strikingStrength | number | The character’s ST for striking purposes. | GCS 5.36+
| throwingStrength | number | The character’s ST for throwing purposes. | GCS 5.36+
| extraDiceFromModifiers | boolean | True if the Modifying Dice + Adds option from B269 is in use. | GCS 5.36+
| attributes | object[] | The list of [Attributes](Attribute) for this sheet. | GCS 5.36+
| encumbrance | object | The [Encumbrance](Encumbrance) data for this sheet. | GCS 5.36+
| equipment | object[] | The top-level list of carried [Equipment](Equipment) for this sheet with a quantity greater than 0. | GCS 5.36+
| skills | object[] | The top-level list of [Skills](Skill) for this sheet. | GCS 5.36+
| spells | object[] | The top-level list of [Spells](Spell) for this sheet. | GCS 5.36+
| traits | object[] | The top-level list of enabled [Traits](Trait) for this sheet. | GCS 5.36+

| Method | Arguments | Result Type | Result | Availability
| --- | --- | --- | --- | ---
| attribute | idOrName: string | object | Returns the [Attribute](Attribute) that matches the given ID or name. IDs are checked first, then names. Names are compared case-insensitively. | GCS 5.36+
| currentEncumbrance | forSkills: boolean, returnMoveFactor: boolean | number | Returns the current encumbrance modifier (a value from 0 to 4) or the move multiplication factor if **returnMoveFactor** is true. If **forSkills** is true, the modifier is adjusted to account for equipment that has been marked as not having its weight counting against skills. | GCS 5.36+
| findEquipment | name: string, tag: string | object[] | Returns the carried [Equipment](Equipment) that match the given **name** and has the given **tag,** case-insensitively. When matching, an empty or undefined value passed in will match everything. Note that only equipment with a quantity greater than 0 is considered and all parents of that equipment must also have a quantity greater than 0. | GCS 5.36+
| findSkills | name: string, specialization: string, tag: string | object[] | Returns the [Skills](Skill) that match the given **name**, the given **specialization,** and have the given **tag,** case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.36+
| findSpells | name: string, tag: string | object[] | Returns the [Spells](Spell) that match the given **name** and have the given **tag,** case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.36+
| findTraits | name: string, tag: string | object[] | Returns the enabled [Traits](Trait) that match the given **name** and have the given **tag,** case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.36+
| hasTrait | name: string | boolean | Returns true if the named [Trait](Trait) is present and enabled. | GCS 5.36+
| skillLevel | name: string, specialization: string, relative: boolean | number | Returns the level of the [Skill](Skill) with the given **name** and **specialization.** If **relative** is true, returns the relative level instead. | GCS 5.36+
| traitLevel | name: string | number | Returns the combined level of the enabled trait(s) with the given ’name’, or -1 if none are found. | GCS 5.36+
| weaponDamage | name: string, usage: string | string \| undefined | Returns the weapon damage for the weapon entry that matches the given **name** and **usage,** or undefined if none is found. | GCS 5.36+
| randomHeightInInches | strength: number | number | Returns a height in inches based on the given **strength** using the chart from B18. | GCS 5.36+
| randomWeightInPounds | strength: number, shift: number | number | Returns a weight in pounds based on the given **strength** using the chart from B18. Adjusts appropriately for the traits _Skinny, Overweight, Fat,_ and _Very Fat,_ if present on the sheet. **shift** causes a shift towards a lighter value if negative and a heavier value if positive, similar to having one of the traits _Skinny, Overweight, Fat,_ and _Very Fat_ applied, but is additive to them. | GCS 5.36+

> [Return to the Scripting Guide.](../Scripting%20Guide)
