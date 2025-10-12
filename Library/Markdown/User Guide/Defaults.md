**Defaults** appear in the **Detail Editor** of [Skills](Skills) and [Equipment](Equipment) items that define weapon usage (see [Melee and Ranged Weapons](Melee%20and%20Ranged%20Weapons)).

**Defaults** represent **Skill Defaults** (p. B173), not GCS [Default Settings](Default%20Settings). They describe what a skill, spell, or weapon usage falls back on if you don’t spend points on it directly.

For example:

- A **skill** might default from an **attribute** (for example, _DX-5_).
- A **weapon** might default from a **skill** (for example, _Broadsword_).
- A **block or parry** could default from your calculated defense score.

> [!NOTE]  
> You can add **multiple defaults**. GCS will use the one that applies and yields the best result given Tech Level and other conditions.

## Adding defaults

To add a default:

1. Open the skill, spell, or item’s **Detail Editor**.
2. In the **Defaults** list, select **Add** ![](./images/icons/icn-add.svg).
3. Choose a **Source** (Attribute, FP, HP, Parry, Block, or Skill).
4. Enter the **modifier** (e.g., `-5`, `+0`) and any other fields that appear.
5. (Optional) Set a **Tech Level** condition.

To delete a default:

- Select **Delete** ![](./images/icons/icn-delete.svg).

## How a default is built

Each default entry in GCS reads like a sentence composed of:

- a **Source** (what you’re defaulting **from**),
- a **Modifier** (numeric adjustment), and
- an optional **Tech Level rule** (when it applies).

The editor uses a mix of **dropdowns** and **text/number fields**. Pick from the dropdowns, then type names or numbers where prompted.

| Default Field       | Description                                                                                           |
| ------------------- | ----------------------------------------------------------------------------------------------------- |
| **Source**          | What this default is based on: **Attribute**, **FP**, **HP**, **Parry**, **Block**, or **Skill**.     |
| **Name**            | Only appears when the source is **Skill**. Enter the exact skill name.                                |
| **Specialization**  | Optional, for **Skill** sources only. Use when a specific specialty is required.                      |
| **Modifier**        | Numeric adjustment added to the source (for example, `-5`, `+0`).                                     |
| **Tech Level rule** | A conditional clause like “**when the Tech Level is …**”. Use [Operators](Operators) for comparisons. |

## Sources

Sources define what the default is based on. The fields you see depend on the source you are selecting.

### Attribute

Defaults from a character **attribute** (e.g., **ST**, **DX**, **IQ**, **Will**, **Vision**, etc.) with a modifier. For example, `DX - 5`.

### FP / HP

Defaults from **Fatigue Points** or **Hit Points** with a modifier.

### Parry / Block

Defaults from the **Parry** or **Block** score with a modifier (p. B374).

### Skill

Defaults from another **skill** (optionally with a **specialization**) plus a modifier. For example, `Bow + 0` or `Driving (Motorcycle) - 4`.

> [!WARNING]
> Skill names must match exactly as they appear in the library or on your sheet. Typos or mismatches mean the default won’t work.

## Tech Level conditions

Each default can include a **Tech Level** clause. This is used if the default only applies for a specific Tech Level. Use **[Operators](Operators)** (text/number comparisons) to control when the default applies.

## Saving defaults

On the **Detail Editor** toolbar:

- **Apply changes:** Select **Apply Changes** ![](images/icons/icn-applyChanges.svg) to save.
- **Discard changes:** Select **Discard changes** ![](./images/icons/icn-discardChanges.svg) to exit without saving.

---

[Return to Home](Home)
