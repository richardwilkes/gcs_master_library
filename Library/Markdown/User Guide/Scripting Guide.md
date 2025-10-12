# Scripting Guide

> Available in GCS 5.36.0 and later.

Some fields, such as notes, support using Javascript to resolve their content. Versions of GCS prior to v5.36.0 used a simple expression evaluator instead. Expressions from those old data files will be automatically transformed into the equivalent Javascript.

Fields that are scriptable will have a Scripting Guide button next to them to bring up this documentation. Scriptable fields that are intended to resolve to a number may either contain a number or a script. Scriptable fields that are intended to resolve to text, however, must have the scripting portion(s) wrapped in tags, like this:

```
My ST + DX is <script>$st + $dx</script> and my name is <script>entity.name</script>.
```

When your Javascript code is called, the following globals will be available for you to use:

- [console](Scripting/Console)
- [dice](Scripting/Dice)
- [entity](Scripting/Entity): The character sheet.
- [Math](Scripting/Math%20Extensions) Extensions
- [measure](Scripting/Measure)
- self: This will be set to the object that the script is attached to. Note that in some cases, this will be `undefined`, such as for scripts attached to ancestries and notes from the sheet's Notes list. Possible types:
  - [Attribute](Scripting/Attribute)
  - [Encumbrance](Scripting/Encumbrance)
  - [Equipment](Scripting/Equipment)
  - [Equipment Modifiers](Scripting/Equipment%20Modifier)
  - [Skills](Scripting/Skill)
  - [Spells](Scripting/Spell)
  - [Traits](Scripting/Trait)
  - [Trait Modifiers](Scripting/Trait%20Modifiers)
- [Top-Level Functions](Scripting/Top-Level%20Functions)
  - formatNum
  - iff
  - signedValue

In addition, any attributes you've defined for the sheet are available as globals using their ID prefixed with a dollar sign, e.g. `$st` refers to the Strength attribute.

---

***Last updated for v5.41.0***
