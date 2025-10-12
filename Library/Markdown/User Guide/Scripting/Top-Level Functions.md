# Scripting: Top-Level Functions

> [Return to the Scripting Guide.](../Scripting%20Guide)

These are a top-level functions.

| Method | Arguments | Result Type | Result | Availability
| --- | --- | --- | --- | ---
| formatNum | value: number, withCommas: boolean, withSign: boolean | string | Returns the **value** as a string with commas every third digit from the right if **withCommas** is true and with a leading `+` if it is positive and **withSign** is true. | GCS 5.39+
| iff | condition: boolean, trueValue: any, falseFalue: any | any | Returns **trueValue** if **condition** is true, otherwise returns **falseValue.** This exists primarily to support the automatic conversions of the old expression engine into Javascript and is essentially the same as `condition ? trueValue : falseValue`. | GCS 5.36+
| signedValue | value: number | string | Returns the **value** as a string with a leading `+` if it is positive. | GCS 5.36+

> [Return to the Scripting Guide.](../Scripting%20Guide)
