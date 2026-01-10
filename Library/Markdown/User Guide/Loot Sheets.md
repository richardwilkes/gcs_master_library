Loot Sheets are a special type of sheet in GCS used to **track treasure, rewards, or collected items** during gameplay. They’re especially useful for GMs to generate treasure hoards or for players to keep a shared record of loot.

## Creating a loot sheet

To create a new loot sheet:

1. Go to **File > New Loot Sheet.**
2. Fill in the fields of the sheet.
3. Add any [Equipment](Equipment) or [Notes](Notes).
4. Organize items with [Containers](Containers) if needed.

## Opening a loot sheet

- **From the User Library:** Double-click the sheet in the [Library Explorer](Library%20Explorer).
- **From another location:** Select **File > Open**, browse to the file, and select **Open**.

## Saving a loot sheet

To save your work:

- **Save:** Select **File > Save**.
- **Save As:** Select **File > Save As**.

## Treasure generation

Loot Sheets can also generate **random treasure hoards** based on weighted probabilities.

1. Create a Loot Sheet with the items you want as possible treasure.
2. For each item, set the **Quantity** to weight its likelihood of being chosen (higher quantities = more common).
3. Select **Generate Treasure** ![](images/icons/icn-wand.svg).
4. Enter a **Minimum Value** and **Maximum Value** for the treasure hoard, then select **OK**.
5. GCS creates a **new Loot Sheet** with a randomized selection of items that fits within the chosen value range. The old loot sheet remains unchanged.

For example, if your Loot Sheet contains:

- **Copper coins (100)**
- **Silver coins (10)**
- **Gold coin (1)**

Then copper is **100× more likely** to be selected than gold, and silver is **10× more likely** than gold.

## Loot Sheet fields

The **Loot Sheet** includes the following fields:

| Loot Sheet Field | Description                                                                                                          |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- |
| **Name**         | The loot sheet's name.                                                                                               |
| **Location**     | Notes about where the loot was obtained.                                                                             |
| **Session**      | Notes about the game session when the loot was found.                                                                |
| **Equipment**    | Items that make up the loot. Standard [Equipment](Equipment) details are included, like weight, value, and quantity. |
| **Notes**        | Any relevant [Notes](Notes) regarding the loot.                                                                      |

## Loot Sheet toolbar

The toolbar above the Loot Sheet gives you quick access to common actions:

| Button                                   | Name                      | Description                                                               |
| :--------------------------------------- | ------------------------- | ------------------------------------------------------------------------- |
| ![](images/icons/icn-help.svg)           | **Help**                  | Open the help page from the User Guide.                                   |
| 100%                                     | **Zoom**                  | Adjust the display size of your loot sheet.                               |
| ![](images/icons/icn-expand.svg)         | **Expand/Collapse All**   | Show or hide all items within containers at once.                         |
| ![](images/icons/icn-openCloseNotes.svg) | **Open/Close All Notes**  | Show or hide all embedded notes on your sheet.                            |
| ![](images/icons/icn-syncSources.svg)    | **Sync with all sources** | Sync all items on the loot sheet with the Master Library.                 |
| ![](images/icons/icn-wand.svg)           | **Generate Treasure**     | Generate a random treasure hoard based on the sheet’s items and settings. |
| N/A                                      | **Search**                | Search for content on your loot sheet.                                    |
| Checkbox                                 | **Names only**            | Limit searches to names only, ignoring notes or other details.            |

---

[Return to Home](Home)
