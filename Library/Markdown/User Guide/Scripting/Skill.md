# Scripting: Skill

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object represents a single Skill or Skill container.

The **For** column indicates whether the property or method is defined for a container (C), a leaf (L), or both.

| For | Property | Type | Value | Availability
| :-: | --- | --- | --- | ---
| CL | id | string | The object ID. | GCS 5.36+
| CL | parentID | string \| undefined | The parent's object ID or undefined if there isn't one. | GCS 5.36+
| CL | parent | object \| undefined | The parent Skill or undefined if there isn't one. | GCS 5.41+
| CL | name | string | The name. | GCS 5.36+
| L | specialization | string | The specialization. | GCS 5.36+
| L | techLevel | string \| undefined | The Tech Level or undefined if one is not required. | GCS 5.36+
| L | kind | string | The kind of Skill, one of **skill** or **technique.** | GCS 5.36+
| L | attribute | string | The attribute ID used to determine the final level. | GCS 5.36+
| L | difficulty | string | The difficulty, one of **E, A, H, VH,** or **W**. | GCS 5.36+
| L | points | number | The number of points spent on this Skill. | GCS 5.36+
| L | level | number | The computed level. | GCS 5.36+
| L | relativeLevel | number | The computed level relative to the controlling attribute. | GCS 5.36+
| L | weapons | object[] | Returns a list of [Weapons](Weapon) attached to this skill. | GCS 5.41+
| CL | notes | string | The notes. | GCS 5.39+
| CL | tags | string[] | The associated tags. | GCS 5.36+
| CL | container | boolean | True if this is a container. | GCS 5.36+
| C | children | object[] \| undefined | The contained child Skills. Undefined if this isn't a container. | GCS 5.36+

| For | Method | Arguments | Result Type | Result | Availability
| :-: | --- | --- | --- | --- | ---
| C | find | name: string, specialization: string, tag: string | object[] | Returns the Skills within the hierarchy of this container that match the given **name** and **specialization**, and have the given **tag**, case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.36+
| L | findWeapons | melee: boolean, name: string, usage: string | object[] | Returns the [Weapons](Weapon) that match the given **name** and **usage**, case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.41+

> [Return to the Scripting Guide.](../Scripting%20Guide)
