The **Point pools block** tracks your current and total **Hit Points (HP)** and **Fatigue Points (FP)** ([B16](B16)). You can also create custom pools for other resources your character uses.

Each pool follows this format: `[current]` of `[total]` points `[EFFECT]`.

## Tracking HP and FP

To set your total points:

- Enter the total points in the second number group.

> **_Example:_** `[current]` of **_`[total]`_** points

GCS automatically updates your total [character point cost](Character%20points) (the number in brackets on the left).

To track your current points:

- Enter the current points in the first number group.

> **_Example:_** **_`[current]`_** of `[total]` points

GCS shows the **effects** of your current points right. These update automatically as your current points change and may change your speed, dodge, and strength values.

## Importing and exporting point pools

You can share custom point pools between characters or reuse them in different sheets by importing or exporting.

Follow the same steps as importing or exporting your [Attributes](Attributes).

## Editing point pools

You can customize or create new pools. This works the same way as editing [Attributes](Attributes).

To edit or add a pool:

1. On the character sheet toolbar, select **Attributes** ![](./images/icons/icn-attributes.svg).
2. On the editor, do one of the following:
   - **Edit** an existing **Pool** or **Pool Threshold**.
   - Select **Add** ![](./images/icons/icn-add.svg) to add a new **Pool** or **Pool Threshold**.
3. Fill in the fields in the form (see table below).
4. On the Attribute toolbar, select **Apply Changes** ![](images/icons/icn-applyChanges.svg) to save.

A point pool is set if the **Attribute type** is **Pool**. See [Attributes](Attributes) for details about each field.

> [!NOTE]
> You can also add point pools from other games by enabling their attribute options. See [Attributes](Attributes) for details.

## Pool Thresholds

You can add thresholds to show how effects change as your pool decreases.

To add a point threshold:

- Select **Add pool threshold** ![](./images/icons/icn-add.svg) on the Attribute entry.

Each threshold includes the following fields:

| Field             | Description                                                                                                                                                                       |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **State**         | The effect name, such as _Reeling_ or _Rested_.                                                                                                                                   |
| **Threshold**     | The number (or equation) that triggers the effect. This uses variables like `$hp` and equations like `Math.ceil($hp / 3) - 1`. Thresholds must be ordered from lowest to highest. |
| **Halve options** | If checked, this halves your Move, Dodge, and Strength for this threshold.                                                                                                        |
| **Explanation**   | Notes about what this threshold means and other effects.                                                                                                                          |

### Scripting

You can calculate thresholds using JavaScript methods. This is useful if you want the effects to scale with your character’s HP, FP, or other values.

## Managing point pools

- **Discard changes:** Select **Discard changes** ![](./images/icons/icn-discardChanges.svg).
- **Delete a threshold or pool:** Select **Delete** ![](./images/icons/icn-delete.svg).
- **Reorder thresholds:** Drag a threshold using its grip ![](./images/icons/icn-grip.svg).
- **Reset attributes (including point pools) to defaults:** Select **Reset** ![](./images/icons/icn-reset.svg) to restore your attributes to the default settings.

## Default point pools

You can change the default set of pools for new characters in [Default Attributes](Default%20Settings).

---

[Return to Home](Home)
