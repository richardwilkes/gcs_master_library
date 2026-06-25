# Scripting: Weapon

> [Return to the Scripting Guide.](../Scripting%20Guide)

This object represents a single Weapon.

The **For** column indicates whether the property or method is defined for a melee weapon (M), a ranged weapon (R), or both.

| For | Property   | Type                | Value                                                                                                                                     | Availability |
|:---:|------------|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------|--------------|
| MR  | id         | string              | The object ID.                                                                                                                            | GCS v5.41+    |
| MR  | kind       | string              | The kind of weapon, either **melee** or **ranged**.                                                                                       | GCS v5.41+    |
| MR  | attachedTo | object \| undefined | The [Equipment](Equipment), [Skill](Skill), [Spell](Spell), or [Trait](Trait) this weapon is attached to or undefined if there isn't one. | GCS v5.41+    |
| MR  | name       | string              | The name.                                                                                                                                 | GCS v5.41+    |
| MR  | notes      | string              | The notes.                                                                                                                                | GCS v5.41+    |
| MR  | usage      | string              | The usage.                                                                                                                                | GCS v5.41+    |
| MR  | usageNotes | string              | The usage notes.                                                                                                                          | GCS v5.41+    |
| MR  | level      | number              | The skill level.                                                                                                                          | GCS v5.41+    |
| MR  | damage     | string              | The damage.                                                                                                                               | GCS v5.41+    |
| MR  | strength   | string              | The strength info.                                                                                                                        | GCS v5.41+    |
| MR  | hidden     | string              | True if the weapon entry has been hidden from display on the sheet.                                                                       | GCS v5.41+    |
|  M  | block      | string              | The block level.                                                                                                                          | GCS v5.41+    |
|  M  | parry      | string              | The parry level.                                                                                                                          | GCS v5.41+    |
|  M  | reach      | string              | The reach.                                                                                                                                | GCS v5.41+    |
|  R  | accuracy   | string              | The accuracy.                                                                                                                             | GCS v5.41+    |
|  R  | bulk       | string              | The bulk.                                                                                                                                 | GCS v5.41+    |
|  R  | range      | string              | The range.                                                                                                                                | GCS v5.41+    |
|  R  | rateOfFire | string              | The rate of fire.                                                                                                                         | GCS v5.41+    |
|  R  | recoil     | string              | The recoil.                                                                                                                               | GCS v5.41+    |
|  R  | shots      | string              | The shots.                                                                                                                                | GCS v5.41+    |

> [Return to the Scripting Guide.](../Scripting%20Guide)
