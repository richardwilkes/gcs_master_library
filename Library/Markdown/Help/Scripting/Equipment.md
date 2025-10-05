# Scripting: Equipment

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object represents a single piece of Equipment or Equipment container.

The **For** column indicates whether the property or method is defined for a container (C), a leaf (L), or both.

| For | Property | Type | Value | Availability
| :-: | --- | --- | --- | ---
| CL | id | string | The object ID. | GCS 5.36+
| CL | parentID | string \| undefined | The parent's object ID or undefined if there isn't one. | GCS 5.36+
| CL | parent | object \| undefined | The parent Equipment or undefined if there isn't one. | GCS 5.41+
| CL | name | string | The name. | GCS 5.36+
| CL | techLevel | string | The Tech Level. | GCS 5.36+
| CL | legalityClass | string | The Legality Class. | GCS 5.36+
| CL | quantity | number | The quantity. | GCS 5.36+
| CL | level | number | The level. | GCS 5.36+
| CL | uses | number | The current uses value. | GCS 5.36+
| CL | maxUses | number | The maximum uses value. | GCS 5.36+
| CL | value | number | The value of one of these items. | GCS 5.36+
| CL | extendedValue | number | The value of this item (with its full quantity) and any items it contains. | GCS 5.36+
| CL | weight | number | The weight in pounds of one of these items. | GCS 5.36+
| CL | extendedWeight | number | The weight in pounds of this item (with its full quantity) and any items it contains. | GCS 5.36+
| CL | weightIgnoredForSkills | boolean | True if this item's weight doesn't count against skill usage. | GCS 5.36+
| CL | equipped | boolean | True if the item is equipped. | GCS 5.36+
| CL | weapons | object[] | Returns a list of [Weapons](Weapon) attached to this item. | GCS 5.41+
| CL | notes | string | The notes. | GCS 5.39+
| CL | tags | string[] | The associated tags. | GCS 5.36+
| CL | container | boolean | True if this is a container. | GCS 5.36+
| C | children | object[] \| undefined | The contained child Equipments. Undefined if this isn't a container. | GCS 5.36+
| CL | activeModifiers | object[] | Returns a flattened list of _active_ [Equipment Modifiers](Equipment%20Modifier) attached to this item. | GCS 5.41+

| For | Method | Arguments | Result Type | Result | Availability
| :-: | --- | --- | --- | --- | ---
| C | find | name: string, tag: string | object[] | Returns the Equipment within the hierarchy of this item that matches the given **name** and have the given **tag**, case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.36+
| CL | findActiveModifier | name: string | object \| null | Returns the first _active_ [Equipment Modifier](Equipment%20Modifier) attached to this item with the given **name**, case-insensitively. | GCS 5.41+
| CL | findWeapons | melee: boolean, name: string, usage: string | object[] | Returns the [Weapons](Weapon) that match the given **name** and **usage**, case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.41+

> [Return to the Scripting Guide.](../Scripting%20Guide)
