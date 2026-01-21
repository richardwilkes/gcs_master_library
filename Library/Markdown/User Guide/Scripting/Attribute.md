# Scripting: Attribute

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object represents a single Attribute.

Any attributes you’ve defined for the sheet are available as globals using their ID prefixed with a dollar sign, e.g. `$st` refers to the Strength attribute. You can also access these via the [Entity](Entity).

For convenience, if you pass the attribute object as a value, it will resolve as if you had passed its maximum value. e.g. `$hp + 1` when the current HP is 8 with a maximum of 10, it would resolve to a value of 11 (10 + 1).

| Property  | Type    | Value                                                                                                                | Availability |
|-----------|---------|----------------------------------------------------------------------------------------------------------------------|--------------|
| id        | string  | The ID for this attribute.                                                                                           | GCS 5.36+    |
| kind      | string  | The kind of attribute this refers to. One of **primary, secondary,** or **pool.**                                    | GCS 5.36+    |
| name      | string  | The short name of the attribute.                                                                                     | GCS 5.36+    |
| fullName  | string  | The full name of the attribute.                                                                                      | GCS 5.36+    |
| maximum   | number  | The maximum value of the attribute.                                                                                  | GCS 5.36+    |
| current   | number  | The current value of the attribute. For attributes other than **pool**, this will always be the same as the maximum. | GCS 5.36+    |
| isDecimal | boolean | True if values other than whole numbers might be present.                                                            | GCS 5.36+    |

> [Return to the Scripting Guide.](../Scripting%20Guide)
