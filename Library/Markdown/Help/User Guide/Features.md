Features appear in the **Detail Editor** of [Traits](Traits), [Skills](Skills), [Spells](Spells), and [Equipment](Equipment) and provide your character with specific benefits. They’re different from [Prerequisites](Prerequisites):

- **Prerequisites** determine _who can take_ something.
- **Features** determine _what it does_ once you have it.

Features are edited directly in the **Detail Editor** under the **Features** list.

## Adding features

To add a feature:

1. Open the **Detail Editor** for the trait, skill, spell, or equipment.
2. In the Features list, select **Add** ![](./images/icons/icn-add.svg).
3. Choose a feature type from the dropdown (see list below).
4. Fill in any required details (text or number fields).

You can apply **multiple features** to the same trait, skill, spell, or piece of equipment.

> **_Example:_** You can apply a DR bonus and a conditional modifier.

To delete a feature:

- Select **Delete** ![](./images/icons/icn-delete.svg).

When you select a feature type from the dropdown, GCS adds more fields to define the effect.

### Common fields

Most features include these options:

- **Number field:** Enter the amount of the modifier. You can apply numbers as flat values, per level, per die, or as a percentage, depending on the feature.
- **Target selectors:** Choose whether the effect applies to a skill, spell, a weapon, “this weapon,” a specialization, usage, tag, or relative skill. Use [Operators](Operators) (see below) to refine matches.

### Special cases

Some feature types also include:

- **Attribute selectors:** Choose which attribute the feature applies to.
- **Location selectors:** For DR bonuses, choose “all locations” or specific hit locations (arm, face, torso) and damage type.
- **Condition text fields:** For conditional modifiers, enter the triggering condition.
- **Reaction sources:** For reaction modifiers, specify who the reaction is from.
- **Colleges** or **power sources:** For spells, restrict by college or source.

## Operators

Operators define how the feature is applied. These appear in dropdowns when you select how to compare values.

Some are for numbers, others for text. The available operators depend on the type of field (text vs. numeric) and target.

See [Operators](Operators) for a full list.

## Feature types

The available features types are chosen from a dropdown.

### General modifiers

- Gives an attribute modifier of
- Gives a conditional modifier of
- Gives a DR bonus of
- Gives a reaction modifier of

### Skills and spells

- Gives a skill level modifier of
- Gives a skill point modifier of
- Gives a spell level modifier of
- Gives a spell point modifier of

## Traits

- Gives a trait level modifier of

### Weapon modifiers

- Gives a weapon damage modifier of
- Gives a weapon accuracy modifier of
- Gives a weapon scope accuracy modifier of
- Gives a weapon DR divisor modifier of
- Gives a weapon effective ST modifier of
- Gives a weapon minimum ST modifier of
- Gives a weapon minimum reach modifier of
- Gives a weapon maximum reach modifier of
- Gives a weapon half-damage range modifier of
- Gives a weapon minimum range modifier of
- Gives a weapon maximum range modifier of
- Gives a weapon recoil modifier of
- Gives a weapon bulk modifier of
- Gives a weapon parry modifier of
- Gives a weapon block modifier of
- Gives a weapon shots per attack (mode 1) modifier of
- Gives a weapon secondary projectiles (mode 1) modifier of
- Gives a weapon shots per attack (mode 2) modifier of
- Gives a weapon secondary projectiles (mode 2) modifier of
- Gives a weapon non-chamber shots modifier of
- Gives a weapon chamber shots modifier of
- Gives a weapon shot duration modifier of
- Gives a weapon reload time modifier of

### Other modifiers

| Feature type                      | Description                                                             |
| --------------------------------- | ----------------------------------------------------------------------- |
| **Set the weapon flag**           | Marks the item as a weapon. Includes settings for whether it can block. |
| **Reduces the attribute cost of** | Lowers the cost of the chosen attribute by a percentage.                |

## Saving features

On the Detail Editor toolbar:

- **Apply changes:** Select **Apply Changes** ![](images/icons/icn-applyChanges.svg) to save.
- **Discard changes:** Select **Discard changes** ![](./images/icons/icn-discardChanges.svg) to exit without saving.

---

[Return to Home](Home)
