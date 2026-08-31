# Substitutions

Substitutions can be used in most text fields in GCS.
In their simplest form they are a simple `@Label@` **placeholder** in a text field.
When viewing an item that has placeholders, a ![substitutions](images/icons/icn-substitutions.svg) toolbar icon becomes active.
Clicking this icon triggers the substitutions process described below. The other way the substitutions process is triggered is when an item is copied to a template/sheet or when a template is applied to a sheet.

## Applying Substitutions

When an item with substitution placeholders is applied or copied it generally triggers the substitution process.
This causes the placeholder to be converted into a Label and an Editable Combobox on a popup dialog box. If an item has multiple placeholders, they will all appear on the same dialog. This Editable Combobox may allow free-form text input and will have a drop-down triggered by the small downward arrow on the right side of the field. This list may have an option named `«not set»` that can be used to skip setting a value for the placeholder. It may also have an option for `«empty»` to specifically set the placeholder value to an empty string.

## Partially Configured Substitutions

When editing a template you can mark items with the `Preconfigured` flag. This is an indicator to the template application process that the selections and substitutions made for this item of the template should be skipped when applying the template. This streamlines the template application process. When an item has substitution placeholders that don't have provided replacement values, the template application process will ask you to complete those missing substitutions.

## Creating Substitution Placeholders

A substitution placeholder can come in a variety of formats.

Older library data exclusively used the simplest form of a placeholder that only specifies a _label_ (`@Label Name@`). The placeholder parsing will attempt to turn this into a label and options in a very narrow set of cases. Barring that it will attempt to turn an older placeholder into a label and a tooltip if possible. Otherwise the entire text is treated as the label.

Newer placeholders can provide a **label**, **tooltips** (`tt(text here)`), **options**, a **free-form** (`*`) flag, and an **allow-empty** (`?`) flag. Here are some examples:

- @Label|*@ - Just free-form text, empty not allowed
- @Label|*|?@ - Free form text and empty are both valid
- @Label|One|Two@ - Mandatory selection of "One" or "Two"
- @Label|One|Two|?@ - Mandatory selection of "One" or "Two" or the «empty» option
- @Label|One|Two|?|*@ - Selection of "One" or "Two" or the «empty» option, or free-form text
- @Label|tt(This is a tooltip)|One|Two|?@ - Includes a tooltip

The **label** is always the text before the first `|` character. The rest of the text is split on further `|` characters. If you need to use `|` anywhere in your placeholder, you can use an escaped version (`\|`). With 3 exceptions, each of the parts after the label is an options that will be presented in the combobox drop-down. The exceptions are the two flags and tooltips. Each flag is a single character. The **allow-empty** flag is `?` and can be anywhere in the options. The **free-form** flag is `*` and can be anywhere in the options. Tooltips are in the format of `tt(tooltip text is here)` and can appear anywhere in the options. That tooltip entry would show the text "tooltip text is here" when you hover over the label on the substitutions dialog form.
