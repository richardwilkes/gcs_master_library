# Point Pools

The **Point Pools block** tracks your current and total **Hit Points (HP)** and **Fatigue Points (FP)** ([B16](B16)).
You can also create custom pools for other resources your character uses.

Each pool follows this format: `[current]` of `[total]` points `[STATE]`.

## Tracking HP and FP

To set your total points:

- Enter the total points in the second number group.

> **_Example:_** `[current]` of **_`[total]`_** points

GCS automatically updates your total [character point cost](Character%20points) (the number in brackets on the left).

To track your current points:

- Enter the current points in the first number group.

> **_Example:_** **_`[current]`_** of `[total]` points

GCS shows the **state** of the pool on the right, such as _Reeling_ or _Rested_. It updates automatically as your
current points change and may halve your Move, Dodge, or Strength, as the pool's thresholds dictate.

## Importing and exporting point pools

Point pools are part of your attributes. Follow the same steps as importing or exporting your
[Attributes](Attributes).

## Editing point pools

You can customize or create new pools. This works the same way as editing [Attributes](Attributes).

To edit or add a pool:

1. On the character sheet toolbar, select **Attributes** ![attributes](images/icons/icn-attributes.svg), or go to
   **Sheet > Attributes**.
2. On the editor, do one of the following:
   - **Edit** an existing pool or one of its thresholds.
   - Select **Add Attribute** ![add](images/icons/icn-add.svg) on the toolbar, then set the new attribute's **Attribute
     Type** to **Pool**. A new pool starts with one threshold.
3. Fill in the fields in the form (see table below).
4. On the Attributes toolbar, select **Apply Changes** ![apply changes](images/icons/icn-applyChanges.svg) to save.

A pool's maximum is editable on the sheet unless its **Attribute Type** is **Pool (Display Only for Maximum)**, in which
case only the current value can be changed. Pools can be hidden with the **Placement** setting, just like other
attributes. See [Attributes](Attributes) for details about each field.

> [!NOTE]
> You can also add point pools from other games by importing their attribute options. See [Attributes](Attributes) for
> details.

## Pool Thresholds

You can add thresholds to show how effects change as your pool decreases.

To add a point threshold:

- Select **Add pool threshold** ![add](images/icons/icn-add.svg) on the pool's row.

Each threshold includes the following fields:

| Field             | Description                                                                                                                                                                       |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **State**         | The effect name, such as _Reeling_ or _Rested_.                                                                                                                                   |
| **Threshold**     | The number (or script) that triggers the effect. This uses variables like `$hp` and expressions like `Math.ceil($hp / 3) - 1`. Thresholds must be ordered from lowest to highest. |
| **Halve Move**    | If checked, halves your Move (rounded up) while the pool is in this state.                                                                                                        |
| **Halve Dodge**   | If checked, halves your Dodge (rounded up) while the pool is in this state.                                                                                                       |
| **Halve Strength**| If checked, halves your Strength (rounded up) while the pool is in this state. HP and damage aren't affected.                                                                      |
| **Explanation**   | Notes about what this threshold means and other effects. Supports [Markdown](Markdown%20Guide) and scripts.                                                                       |

### Scripting

You can calculate thresholds using JavaScript. This is useful if you want the effects to scale with your character’s
HP, FP, or other values. See the [Scripting Guide](Scripting%20Guide).

## Managing point pools

- **Discard changes:** Select **Discard Changes** ![discard changes](images/icons/icn-discardChanges.svg).
- **Delete a threshold or pool:** Select **Delete** ![delete](images/icons/icn-delete.svg) beside it. A pool always
  keeps at least one threshold.
- **Reorder thresholds:** Drag a threshold using its grip ![grip](images/icons/icn-grip.svg).
- **Reset attributes (including point pools) to defaults:** Select **Reset** ![reset](images/icons/icn-reset.svg) to
  restore the sheet's attributes to the current [Default Attributes](Default%20Settings).

## Default point pools

You can change the default set of pools for new characters in [Default Attributes](Default%20Settings).

---

[Return to Home](Home)
