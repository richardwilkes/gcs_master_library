# Scripting: Dice

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object provides dice specification manipulation utlities.

| Method | Arguments | Result Type | Result | Availability
| --- | --- | --- | --- | ---
| add | left: string, right: string | string | Adds two dice specifications together and returns a string with the new specification. For example, `dice.add("1d+1", "1d-2")` would return `2d-1`. | GCS 5.36+
| count | diceSpec: string | number | Returns the number of dice in the **diceSpec.** For example, `dice.count("2d+3")` would return `2`. | GCS 5.36+
| from | sides: number | string | Returns a dice specification with the specified **sides,** 1 for the count and multiplier, and 0 for the modifier. For example, `dice.from(4)` would return `1d4`. | GCS 5.36+
| from | count: number, sides: number | string | Returns a dice specification with the specified **count** and **sides,** 0 for the modifiers, and 1 for the multiplier. For example, `dice.from(2, 4)` would return `2d4`. | GCS 5.36+
| from | count: number, sides: number, modifier: number | string | Returns a dice specification with the specified **count, sides,** and **modifier,** and 1 for the multiplier. For example, `dice.from(2, 4, -1)` would return `2d4-1`. | GCS 5.36+
| from | count: number, sides: number, modifier: number, multiplier: number | string | Returns a dice specification with the specified **count, sides, modifier,** and **multiplier.** For example, `dice.from(2, 4, -1, 2)` would return `2d4-1x2`. | GCS 5.36+
| modifier | diceSpec: string | number | Returns the modifier in the *diceSpec.** For example, `dice.modifier("2d+3")` would return `3`. | GCS 5.36+
| multiplier | diceSpec: string | number | Returns the multiplier in the *diceSpec.** For example, `dice.modifier("2d+3x4")` would return `4`. | GCS 5.36+
| roll | diceSpec: string, extraDiceFromModifiers: boolean | number | Returns the result of rolling the **diceSpec.** If **extraDiceFromModifiers** is true, it will behave as if the Modifying Dice + Adds option from B269 is in use.<br><br>**NOTE:** This method should only be used within an Ancestry randomizer script, since other scripts on a sheet will be evaluated every time the display needs to be updated and would result in ever-changing results. | GCS 5.36+
| sides | diceSpec: string | number | Returns the number of sides on each die in the **diceSpec.** For example, `dice.sides("2d+3")` would return `6`. | GCS 5.36+
| subtract | left: string, right: string | string | Subtracts **right** dice specification from **left** one and returns a string with the new specification. For example, `dice.subtract("3d+1", "2d+2")` would return `1d-1`. | GCS 5.36+

> [Return to the Scripting Guide.](../Scripting%20Guide)
