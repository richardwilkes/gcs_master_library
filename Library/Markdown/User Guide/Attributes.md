The **Primary and Secondary Attribute blocks** track your character’s Basic Attributes (p. B14) and Secondary Characteristics (p. B15). These values form the foundation of your [character sheet](Character%20Sheet%20Overview) and affect many other parts of GCS, including [Traits](Traits), [Skills](Skills), and [Spells](Spells).

## Primary attributes

Your **Primary Attributes** are the four basic attributes (p. B14): ST, DX, IQ, and HT.

To set your primary attributes:

- In the **Primary Attributes block**, enter a score for each attribute.

As you change these values, GCS will:

- Show the point cost next to each attribute (number in brackets).
- Update your unspent [character points](Character%20points) in the **Points block**.
- Adjust related secondary attributes.
- Apply defaults to [Traits](Traits), [Skills](Skills), and [Spells](Spells).

## Secondary attributes

Your **Secondary Attributes** are your secondary characteristics (p. B15) that depend on your primary attributes.

To set your secondary attributes:

- In the **Secondary Attributes block**, enter a score for each value.

## Using attribute options from other games

Some GURPS supplements and house rules use different attributes or point pools. GCS includes several of these options.

> [!TIP]
> If you’re not using a supplement or house rule listed here, stick with the default GURPS attributes.

To switch your attributes:

1. On the character sheet toolbar, select **Attributes** ![](./images/icons/icn-attributes.svg).
2. On the Attribute toolbar, select **Menu** ![](./images/icons/icn-menu.svg).
3. Choose an option from the table below.
4. Choose whether to:
   - **Replace** existing attributes with the new items, or
   - **Merge** the selected attributes into existing ones.
5. Select **Import**.
6. On the Attribute toolbar, select **Apply Changes** ![](images/icons/icn-applyChanges.svg) to save.

| Attribute option                            | Notes                                                                                                                                                                |
|---------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **After the End**                           | Adds Radiation Threshold Points (RP) (p. ATE1:24).                                                                                                                   |
| **Fantastic Dungeon Grappling**             | Adds Control Maximum (CM) levels to Secondary Attributes.                                                                                                            |
| **PY83 HT-based Per**                       | Perception based on HT instead of IQ (p. PY83:21).                                                                                                                   |
| **QN and HT-based Per**                     | Adds Quintessence (QN) and Quintessence Points (QP) (p. PY120:21); Perception based on HT (p. PY83:21).                                                              |
| **Quintessence**                            | Adds Quintessence (QN) and Quintessence Points (QP) (p. PY120:21).                                                                                                   |
| **Separate Will and Per from IQ**           | Will and Perception become Primary Attributes, independent of IQ.                                                                                                    |
| **Star Wars**                               | Adds Force Sight to Secondary Attributes.                                                                                                                            |
| **Star Wars – with Energy Reserve (Force)** | Adds Force Sight to Secondary Attributes and Energy Reserve (Force) Points (ER).                                                                                     |
| **Threshold Magic**                         | Adds Threshold and Recharge Rate (Primary Attributes), plus Excess Power Tally and Calamity Roll Bonus (Secondary Attributes), and Power Tally Points (PT) (p. T76). |

## Importing and exporting attributes

You can share custom attribute settings between characters or reuse them in different sheets by importing or exporting.

To import or export an attribute:

1. On the Attribute toolbar, select **Menu** ![](./images/icons/icn-menu.svg).
2. Select one of the following:
   - **Import:** Load a saved attributes into your sheet.
   - **Export:** Save the current attributes as a file.

## Editing attributes

You can edit the underlying calculations for attributes or create custom attributes.

> [!WARNING]  
> Editing attributes can affect calculations across your character sheet. Proceed with caution.

To edit or add attributes:

1. On the character sheet toolbar, select **Attributes** ![](./images/icons/icn-attributes.svg).
2. On the editor, do one of the following:
   - **Edit** an existing attribute.
   - Select **Add** ![](./images/icons/icn-add.svg) to add a new attribute.
3. Enter values in the form using the fields below.
4. On the Attribute toolbar, select **Apply Changes** ![](images/icons/icn-applyChanges.svg) to save.

### Attribute fields

| Field              | Description                                                                                                                                                                                                                                 |
|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **ID**             | Unique variable name used for references.                                                                                                                                                                                                   |
| **Attribute type** | Choose from integer, decimal, point pool, or separator. “Display only” creates a read-only field. Anything below a separator can be collapsed/expanded.                                                                                     |
| **Placement**      | Where the attribute appears on the character sheet. You can also set it to hidden. If **Automatic** is selected, the attribute appears in the Primary or Secondary block depending on whether its base value is a Primary attribute or not. |
| **Short name**     | The label shown on the character sheet.                                                                                                                                                                                                     |
| **Full name**      | Optional. If entered, displays before the short name.                                                                                                                                                                                       |
| **Base value**     | Starting value for the attribute. Supports scripting and attribute IDs (for example, `Math.floor($basic_speed)`). See [Scripting Guide](Scripting%20Guide).                                                                                 |
| **Cost per point** | Point cost for each level.                                                                                                                                                                                                                  |
| **SM reduction**   | Size modifier reduction percentage.                                                                                                                                                                                                         |

### Point pools

See [Point pools](Point%20pools) for details on customizing your pools.

## Managing attributes

- **Discard changes:** Select **Discard changes** ![](./images/icons/icn-discardChanges.svg).
- **Delete an attribute:** Select **Delete** ![](./images/icons/icn-delete.svg).
- **Reorder attributes:** Drag an attribute using its grip ![](./images/icons/icn-grip.svg).
- **Reset attributes to defaults:** Select **Reset** ![](./images/icons/icn-reset.svg) to restore your attributes to the default settings.

## Default attributes

You can change the default set of attributes for new characters in [Default Attributes](Default%20Settings).

---

[Return to Home](Home)
