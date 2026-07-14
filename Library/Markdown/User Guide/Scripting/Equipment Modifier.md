# Scripting: Equipment Modifier

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object represents a single Equipment Modifier. Only active Equipment Modifiers (which are never containers) can be accessed via scripting.

| Property   | Type                | Value                                                                                    | Availability |
|------------|---------------------|------------------------------------------------------------------------------------------|--------------|
| id         | string              | The object ID.                                                                           | GCS v5.41+   |
| attachedTo | object \| undefined | The [Equipment](Equipment) this modifier is attached to or undefined if there isn't one. | GCS v5.41+   |
| name       | string              | The name.                                                                                | GCS v5.41+   |
| techLevel  | string              | The Tech Level.                                                                          | GCS v5.41+   |
| notes      | string              | The notes.                                                                               | GCS v5.41+   |
| tags       | string[]            | The associated tags.                                                                     | GCS v5.41+   |

> [Return to the Scripting Guide.](../Scripting%20Guide)
