# Scripting: Trait

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object represents a single Trait or Trait container.

The **For** column indicates whether the property or method is defined for a container (C), a leaf (L), or both.

| For | Property | Type | Value | Availability
| :-: | --- | --- | --- | ---
| CL | id | string | The object ID. | GCS 5.36+
| CL | parentID | string \| undefined | The parent's object ID or undefined if there isn't one. | GCS 5.36+
| CL | parent | object \| undefined | The parent Trait or undefined if there isn't one. | GCS 5.41+
| CL | name | string | The name. | GCS 5.36+
| L | level | number \| undefined | The level of the Trait or undefined if it is not leveled. | GCS 5.41+
| L | weapons | object[] | Returns a list of [Weapons](Weapon) attached to this Trait. | GCS 5.41+
| CL | notes | string | The notes. | GCS 5.39+
| CL | tags | string[] | The associated tags. | GCS 5.36+
| CL | container | boolean | True if this is a container. | GCS 5.36+
| C | kind | string | The kind of container, one of **group, alternative abilities, ancestry, attributes,** or **meta trait.** | GCS 5.36+
| C | children | object[] | The contained child Traits. | GCS 5.36+
| CL | activeModifiers | object[] | Returns a flattened list of _active_ [Trait Modifiers](Trait%20Modifier) attached to this Trait. | GCS 5.41+

| For | Method | Arguments | Result Type | Result | Availability
| :-: | --- | --- | --- | --- | ---
| C | find | name: string, tag: string | object[] | Returns the Traits within the hierarchy of this Trait that match the given **name** and have the given **tag**, case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.36+
| CL | findActiveModifier | name: string | object \| null | Returns the first _active_ [Trait Modifier](Trait%20Modifier) attached to this Trait with the given **name**, case-insensitively. | GCS 5.41+
| L | findWeapons | melee: boolean, name: string, usage: string | object[] | Returns the [Weapons](Weapon) that match the given **name** and **usage**, case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.41+

> [Return to the Scripting Guide.](../Scripting%20Guide)
