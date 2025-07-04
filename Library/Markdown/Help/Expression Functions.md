### Expression Functions

> This information is for the expression evaluation engine, which is no longer present in GCS v5.36.0 and later. It was
> replaced with [JavaScript](./Scripting.md).

| Function | Description |
|----------|-------------|
| abs(number) | Returns the absolute value of the `number`. |
| add_dice(dice_spec1, dice_spec2) | Adds two dice specifications together and returns a string suitable for passing to the `roll(dice_spec)` function. `add_dice(1d+1, 1d-2)` would return `2d-1`. **Not available prior to v5.19.** |
| advantage_level(name) | ***Deprecated.*** Looks for a trait with the `name` and returns its level or -1 if it can't be found. **Not available prior to v4.31**. Use `trait_level(name)` for **v5+.** |
| cbrt(number) | Returns the cube root of the `number`. |
| ceil(number) | Returns the smallest (closest to negative infinity) value that is greater than or equal to the `number` and is equal to a mathematical integer. |
| dice(sides) | Returns a string suitable for passing to the `roll(dice_spec)` function. `dice(4)` would return `1d4`. |
| dice(count, sides) | Returns a string suitable for passing to the `roll(dice_spec)` function. `dice(2,4)` would return `2d4`. |
| dice(count, sides, modifier) | Returns a string suitable for passing to the `roll(dice_spec)` function. `dice(2,4,-1)` would return `2d4-1`. |
| dice(count, sides, modifier, multiplier) | Returns a string suitable for passing to the `roll(dice_spec)` function. `dice(2,4,-1,2)` would return `2d4-1x2`. |
| dice_count(dice_spec) | Returns the number of dice in the `dice_spec`. `dice_count(2d+3)` would return `2`. **Not available prior to v5.19.** |
| dice_modifier(dice_spec) | Returns the modifier in the `dice_spec`. `dice_modifier(2d+3)` would return `3`. **Not available prior to v5.19.** |
| dice_multiplier(dice_spec) | Returns the multiplier in the `dice_spec`. `dice_multiplier(2d+3)` would return `1`, while `dice_multiplier(2d+3x4)` would return `4`. **Not available prior to v5.19.** |
| dice_sides(dice_spec) | Returns the number of sides on each die in the `dice_spec`. `dice_sides(2d+3)` would return `6`. **Not available prior to v5.19.** |
| enc(forSkills) | Returns the current encumbrance modifier (a value from 0 to 4). If `forSkills` is true, the modifier is adjusted to account for equipment that has been marked as not having its weight counting against skills. **Not available prior to v5.3.** |
| enc(forSkills, returnFactor) | Returns the current encumbrance modifier (a value from 0 to 4) or the move multiplication factor if `returnFactor` is true. If `forSkills` is true, the modifier is adjusted to account for equipment that has been marked as not having its weight counting against skills. **Not available prior to v5.4.** |
| exp(number) | Returns Euler's number e raised to the power of the `number`. |
| exp2(number) | Returns 2 raised to the power of the `number`. |
| floor(number) | Returns the largest (closest to positive infinity) value that is less than or equal to the `number` and is equal to a mathematical integer. |
| has_trait(name) | Returns true if the named trait is present and active on the sheet. **Not available prior to v5.12.** |
| if(test, true_result, false_result) | Returns `false_result` if `test` resolves to 0 or an empty string, otherwise returns `true_result`. |
| log(number) | Returns the natural logarithm (base e) of the `number`. |
| log1p(number) | Returns the natural logarithm of the sum of the `number` and 1. |
| log10(number) | Returns the base 10 logarithm of the `number`. |
| max(num1, num2) | Returns the greater of `num1` or `num2`. |
| min(num1, num2) | Returns the lesser of `num1` or `num2`. |
| random_height(st) | Returns a random height in inches based on the provided strength. **Not available prior to v5.12.** |
| random_weight(st) | Returns a random weight in pounds based on the provided strength. Adjusts appropriately for the traits Skinny, Overweight, Fat, and Very Fat, if present on the sheet. **Not available prior to v5.12.** |
| random_weight(st, shift) | Returns a random weight in pounds based on the provided strength. Adjusts appropriately for the traits Skinny, Overweight, Fat, and Very Fat, if present on the sheet. 'shift' causes a shift towards a lighter value if negative and a heavier value if positive, similar to having one of the traits Skinny, Overweight, Fat, and Very Fat applied, but is additive to them. **Not available prior to v5.12.** |
| roll(dice_spec) | Returns the result of rolling dice (dice_spec uses standard dice notation or the result of a call to the `dice` function). |
| round(number) | Returns the closest integer value to the `number`, with ties rounding to positive infinity. |
| signed(number) | Returns the `number` with a leading '+' if it is positive. |
| skill_level(name) | Looks for a skill with `name` and no specialization and returns its level or 0 if it can't be found. **Not available prior to v5.4.** |
| skill_level(name, specialization) | Looks for a skill with `name` and `specialization` and returns its level or 0 if it can't be found. **Not available prior to v5.4.** |
| skill_level(name, specialization, relative) | Looks for a skill with `name` and `specialization` and returns its level or 0 if it can't be found. If `relative` is true, the relative level is returned instead. **Not available prior to v5.4.** |
| sqrt(number) | Returns the positive square root of `number`. |
| ssrt(length, units, flag) | Returns a value from the Size and Speed/Range Table on [B550](B550). `length` should be a number. `units` should be one of `in`, `ft`, `yd`, `mi`, `cm`, `km`, or `m`. `flag` should be true to have it return the size modifier or false to return the speed/range modifier. **Not available prior to v4.32.** |
| ssrt_to_yards(size_modifier) | Returns the number of yards for the given `size_modifier` from the Size and Speed/Range Table on [B550](B550). **Not available prior to v4.32.** |
| subtract_dice(dice_spec1, dice_spec2) | Subtracts the first dice specification from the second and returns a string suitable for passing to the `roll(dice_spec)` function. `subtract_dice(3d+1, 2d+2)` would return `1d-1`. **Not available prior to v5.19.** |
| trait_level(name) | Looks for a trait with the `name` and returns its level or -1 if it can't be found. **Not available prior to v5.** |
| weapon_damage(description, usage) | Looks for an equipped weapon with the specified description and usage and returns its resolved damage string, or an empty string if it cannot be found. **Not available prior to v5.19.** |

See also: [Expression Operators](./Expression%20Operators.md)

***Last updated for v5.26.0***
