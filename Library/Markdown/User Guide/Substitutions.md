# Substitutions

Many items in the Master Library need details that only make sense when you add them to a character. For example,
_Enemy_ needs to know who the enemy is, and _Hobby Skill_ needs a specialization. **Substitution placeholders** let an
item ask for these details. A placeholder is text between two `@` characters, such as `@Who@`. When you add the item to
a character sheet or template, GCS prompts you for a value and uses your answer everywhere the placeholder appears.

You can use placeholders in most text fields of traits, skills, spells, equipment, and notes, including the text in
their modifiers, weapons, features, prerequisites, and defaults.

> [!NOTE]
> The choices, flags, and tooltips described on this page, and the **«not set»** and **«empty»** entries in the
> substitutions dialog, are available in GCS v5.49.0 and later. Earlier versions show the whole placeholder text as
> the label and accept any typed value.

## When GCS asks for substitutions

GCS opens the substitutions dialog when:

- You add an item that has placeholders to a character sheet or template, whether by dragging it from a library,
  pasting it, or applying a template.
- You select **Set Substitutions** ![substitutions](images/icons/icn-substitutions.svg) in the toolbar of an item's
  editor. This button is only enabled when the item has placeholders. The editors for weapons, trait modifiers, and
  equipment modifiers don't have it; use the editor of the trait or equipment that owns them instead.

## Providing values

The dialog shows one row per placeholder, with the placeholder's label on the left and a field for its value on the
right. If several items need values, for example when you apply a template, they all appear in the same dialog. Hover
over a label to see its tooltip, if the placeholder has one.

The field depends on how the placeholder was written:

- If the placeholder allows free-form text, the field is an editable drop-down. Type a value, or select one from the
  list by clicking the arrow on the right side of the field.
- Otherwise, the field is a plain drop-down and you must select one of the listed choices.

Every list starts with **«not set»**, and includes **«empty»** when the placeholder allows an empty value:

- **«not set»** leaves the placeholder unresolved. GCS displays it as `@Label@` and asks for it again the next time
  the item is copied to a sheet or template, or a template containing it is applied. Selecting **«not set»** is also
  the only way to clear a value you set earlier.
- **«empty»** replaces the placeholder with nothing.

## Preconfigured items in templates

When you edit an item in a template, its editor includes a **Preconfigured** checkbox. Containers only offer it for
traits and equipment. Turn it on once you've made the modifier selections and substitutions the template should always
use. When the template is applied, GCS skips the prompts for that item and only asks for placeholders that still have no
value. This keeps template application short for players. See [Character Templates](Character%20Templates) for more on
building templates.

## Writing placeholders

The simplest placeholder is just a label: `@Label@`. It accepts any text, including an empty value, and is the only
form used by older library data.

A placeholder can also offer a list of choices, show a tooltip, and control whether free-form text or an empty value is
allowed. Separate the parts with `|`. The label always comes first; the other parts can appear in any order.

| Part            | Syntax     | Description                                                                                                |
|-----------------|------------|------------------------------------------------------------------------------------------------------------|
| **Label**       | `Label`    | Always first and can't be empty. Shown in the dialog and in place of the placeholder until a value is set. |
| **Choice**      | `text`     | Any part that isn't a flag or a tooltip becomes a choice in the drop-down.                                 |
| **Free-form**   | `*`        | Lets you type a value instead of picking a choice. Implied when there are no choices.                      |
| **Allow empty** | `?`        | Adds **«empty»** to the list.                                                                              |
| **Tooltip**     | `tt(text)` | Shown when you hover over the label. Use more than one `tt()` part for a multi-line tooltip.               |

Examples:

- `@Label@` — free-form text; empty allowed. Behaves like an older placeholder.
- `@Label|*@` — free-form text; empty not allowed.
- `@Label|*|?@` — free-form text; empty allowed.
- `@Label|One|Two@` — must select "One" or "Two".
- `@Label|One|Two|?@` — must select "One", "Two", or **«empty»**.
- `@Label|One|Two|?|*@` — select "One", "Two", or **«empty»**, or type a value.
- `@Label|tt(This is a tooltip)|One|Two|?|*@` — the same, with a tooltip on the label.

> [!IMPORTANT]
> Once a placeholder has any part after the label, an empty value is only allowed when you include `?`. For example,
> `@Label|tt(A hint)@` still accepts any text but no longer accepts an empty value. Write `@Label|tt(A hint)|?@` to keep
> allowing it.

To use a literal `|` or `\` in a label, choice, or tooltip, put a backslash in front of it: `\|` or `\\`. To show a
literal `@` in a text field without starting a placeholder, write `\@`.

### Older placeholders

Older library data often packs guidance into the label, such as `@Weapon: Broadsword, Axe, etc.@`. GCS reads these
forms specially:

- `@Label: One, Two, etc.@` — a short label, a colon, and a comma-separated list ending in "etc." becomes a label with
  those items as choices. Free-form text and empty values are still allowed, and the list is shown as the tooltip.
- `@Label: text@` — a short label and a colon becomes a label, with the rest of the text shown as the tooltip.
- Anything else is used as the label.

---

[Return to Home](Home)
