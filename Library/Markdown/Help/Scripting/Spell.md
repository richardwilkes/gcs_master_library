# Scripting: Spell

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object represents a single Spell or Spell container.

The **For** column indicates whether the property or method is defined for a container (C), a leaf (L), or both.

| For | Property | Type | Value | Availability
| :-: | --- | --- | --- | ---
| CL | id | string | The object ID. | GCS 5.36+
| CL | parentID | string \| undefined | The parent's object ID or undefined if there isn't one. | GCS 5.36+
| CL | parent | object \| undefined | The parent Spell or undefined if there isn't one. | GCS 5.41+
| CL | name | string | The name. | GCS 5.36+
| L | techLevel | string \| undefined | The Tech Level or undefined if one is not required. | GCS 5.36+
| L | kind | string | The kind of Spell, one of **spell** or **ritual magic spell.** | GCS 5.36+
| L | attribute | string | The attribute ID used to determine the final level. | GCS 5.36+
| L | difficulty | string | The difficulty, one of **E, A, H, VH,** or **W**. | GCS 5.36+
| L | points | number | The number of points spent on this Spell. | GCS 5.36+
| L | level | number | The computed level. | GCS 5.36+
| L | relativeLevel | number | The computed level relative to the controlling attribute. | GCS 5.36+
| L | college | string[] | The associated colleges. | GCS 5.36+
| L | powerSource | string | The power source. | GCS 5.36+
| L | spellClass | string | The class of Spell. | GCS 5.36+
| L | resist | string | The resistance check. | GCS 5.36+
| L | castingCost | string | The casting cost. | GCS 5.36+
| L | maintenanceCost | string | The maintenance cost. | GCS 5.36+
| L | castingTime | string | The casting time. | GCS 5.36+
| L | duration | string | The duration it lasts. | GCS 5.36+
| L | prereqCount | number | The count of Spell prereqs. | GCS 5.36+
| L | ritualSkillName | string | The name of the [Skill](Skill) used as a base for ritual magic spells. | GCS 5.36+
| CL | notes | string | The notes. | GCS 5.39+
| CL | tags | string[] | The associated tags. | GCS 5.36+
| CL | container | boolean | True if this is a container. | GCS 5.36+
| C | children | object[] \| undefined | The contained child Spells. Undefined if this isn't a container. | GCS 5.36+

| For | Method | Arguments | Result Type | Result | Availability
| :-: | --- | --- | --- | --- | ---
| C | find | name: string, tag: string | object[] | Returns the Spells within the hierarchy of this container that match the given **name** and have the given **tag**, case-insensitively. When matching, an empty or undefined value passed in will match everything. | GCS 5.36+

> [Return to the Scripting Guide.](../Scripting%20Guide)
