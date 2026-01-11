New to GCS? This guide walks you through creating your first character step by step.

To keep things simple, each step introduces a key part of the character sheet and how GCS works - without overwhelming you with details. We’ll focus on learning GCS (not the GURPS rules), but we'll point out useful references to _GURPS Basic Set: Characters_ when relevant (for example, p. B14).

## Get Started

Here's what you'll do:

1. [Create a new character](https://github.com/richardwilkes/gcs/wiki/Create-your-first-character#step-1-create-a-new-character)
2. [Set your attributes](https://github.com/richardwilkes/gcs/wiki/Create-your-first-character#step-2-set-your-attributes) (ST, DX, IQ, HT)
3. [Add a few traits](https://github.com/richardwilkes/gcs/wiki/Create-your-first-character#step-3-add-a-few-traits) (advantages, disadvantages)
4. [Add a few skills](https://github.com/richardwilkes/gcs/wiki/Create-your-first-character#step-4-add-a-few-skills)
5. [Add a few spells](https://github.com/richardwilkes/gcs/wiki/Create-your-first-character#step-5-add-a-few-spells)
6. [Add equipment](https://github.com/richardwilkes/gcs/wiki/Create-your-first-character#step-6-add-equipment)
7. [Save your character](https://github.com/richardwilkes/gcs/wiki/Create-your-first-character#step-7-save-your-character)

To help illustrate the steps, we'll build a sample character as an example: **Aelric the Apprentice**.

---

### Step 1: Create a new character

Start by creating a blank [character sheet](Character%20Sheet%20Overview).

### Creating a character

To create a new character:

1. Open **GCS**.
2. Select **File > New Character Sheet**.

A blank character sheet opens with:

- A randomly generated name and description
- All primary attributes set to 10
- A humanoid [body type](Body%20type)
- 250 unspent [character points](Character%20points) (your starting points).

### Renaming your character

Change the default name and description to something you like.

> **_Example:_** For the **Name**, enter _Aelric the Apprentice_.

> [!tip]
> You can randomize description fields by selecting **Randomize** ![](images/icons/icn-randomize.svg) for each field.

### Changing starting points

To change your unspent starting points (p. B10):

1. On the **Points block**, select **Edit** ![](images/icons/icn-edit.svg) to open the Points Record.
2. Enter a new value for the **Initial points**.
   > **_Example:_** Enter 150 for Aelric's Initial points.
3. On the tab toolbar, select **Apply Changes** ![](images/icons/icn-applyChanges.svg), then close the Points Record.

The Points block updates to show your new unspent starting points. GCS will automatically change this total as you add traits, skills, and spells.

Now that your character sheet is created and your starting points are set, it’s time to define your character’s core abilities by setting their attributes.

---

## Step 2: Set your attributes

Your **Primary Attributes** are your basic [attributes](Attributes) (p. B14) that form the foundation of your character. They influence secondary attributes, skill levels, and other calculations throughout the sheet.

### Setting primary attributes

To set your basic attributes:

- On the **Primary Attributes block**, enter a score for each of the **four basic attributes**: ST, DX, IQ, and HT.
  > _Example:_ Set Aelric's primary attributes to:
  >
  > - **ST**: 10 (average strength)
  > - **DX**: 11 (a bit nimble)
  > - **IQ**: 13 (a smart and perceptive mage)
  > - **HT**: 10 (average health)

As you change these values, GCS will:

- Show the point cost next to each attribute (number in brackets)
- Update your unspent points on the **Points block**
- Adjust related secondary attributes,
- Apply defaults to traits and skills (which we’ll add in future steps)

### Adjusting secondary attributes and point pools

You can also edit your **Secondary Attributes** (p. B15), **FP**, and **HP** (p. B16) .

> **_Example:_** Increase Aelric's FP to 12 for a small boost when casting spells.

> [!tip]
> Keep track of your current **HP** and **FP** by changing the first number (for example, **_8_ of 10 HP**).

With your primary and secondary attributes in place, you can give your character defining strengths and weaknesses by **adding** advantages and disadvantages.

---

## Step 3: Add a few traits

The **Trait list** is where you add **advantages** (p. B32) and **disadvantages** (p. B119), called [Traits](Traits) in GCS.

### Master Library

GCS includes hundreds of official traits, skills, spells, and equipment in the **Master Library** that are taken from GURPS books and other supplements.

You can expand ![](./images/icons/icn-folderExpand.svg) the Master Library's folders from the **Library Explorer** on the left sidebar.

Many items include notes and explanations, and when added to your sheet they automatically adjust stats and points for you.

To open a library from the Master Library:

1. On the Library Explorer, expand ![](./images/icons/icn-folderExpand.svg) the **Master Library**.
2. Browse to a folder containing libraries.
3. Double-click a library to open it.
   > **_Example:_** Expand **Master Library > Basic Set** to see content from _GURPS Basic Set: Characters_.

> [!tip]
> The tab toolbar on the top of a library contains some useful tools:
>
> - **Search:** Use the **Content Filter** to search for a trait by name.
> - **Filter:** Use the **Tag filter** to filter by tag (e.g., Advantage, Disadvantage, spell college, etc.). These options change based on the type of library.

### Adding advantages and disadvantages

To add an advantage (p. B32) or disadvantage (p. B119):

1. Open a Trait library from the **Master Library**.
2. Choose the trait you want.
3. Add the trait in one of two ways:
   - Drag it from the library to your sheet, or
   - Right-click it and select **Copy to Character Sheet**.

> **_Example:_** Go to **Master Library > Basic Set** and open **Basic Set Traits**. Right-click the following traits, then select **Copy to Character Sheet** to add them to Aelric's sheet:
>
> - **Language Talent** (advantage)
> - **Cowardice** (disadvantage)
> - **Arachnophobia (Spiders)** (disadvantage)

When you add a trait:

- GCS highlights the block where the trait can be dropped. You can drop the trait anywhere on the sheet and it will always go to the correct location.
- The **Points block** updates automatically:
  - Advantages subtract from unspent points.
  - Disadvantages (negative points) add to unspent points.

### Adding quirks

Quirks are added the same way as traits. Some will prompt you to enter details that will appear beneath the quirk on your sheet.

> **_Example:_** Filter the Trait library by Quirks, then drag **Obsession** to Aleric's sheet. In the text box, enter "Collects feathers".

### Modifiers

Some traits open a Modifiers window when added. You can choose options to customize the trait, which changes its point cost. Some modifiers also allow a short note.

> **_Example:_** Search for **Magery** and drag the **Magery 1** trait to Aelric's sheet (make sure you clear the Tag filter). The Modifier window shows the special limitations for Magery (p. B67). Leave the modifiers blank and select **OK**.

### Increasing a trait's level

To increase the level:

- Right-click the trait on your character sheet, then select **Increment**.

> **_Example:_** Right-click **Magery**, then increase it twice so Aelric has Magery 3.

Once you’ve locked in your traits, you can round out your character’s abilities by adding skills.

---

## Step 4: Add a few skills

The **Skills list** is where you can add [skills](Skills) (p. B167) and techniques (p. B229).

### Adding skills

The **Master Library** includes Skill libraries taken from GURPS books.

Adding skills works the same way as adding traits:

1. Open a skill library from the Master Library.
2. Add a skill in one of two ways:
   - Drag it from the library to your sheet, or
   - Right-click it and select **Copy to Character Sheet**.

> **_Example:_** Open the Basic Set Skills library, then add the following skills to Aelric's sheet:
>
> - Occultism
> - Alchemy
> - Thaumatology
> - First Aid

> [!tip]
> If you own a PDF copy of a GURPS book, you can link it to GCS and select the page references to open to the relevant page. See [Page References](Page%20References) for more details.

### Increasing a skill's level

Skills use your **Primary Attributes** to determine their base level, so changing an attribute can change the skill level.

As you add skills:

- Skills cost at least 1 point.
- Higher skill levels cost more points based on the buying skills rules and Skill Cost Table (p. B170).
- When added, a skill's starting level is calculated automatically.

To increase the skill level:

- Right-click the skill on your character sheet and select **Increase Skill Level**.

> **_Example:_** Increase Aelric's Alchemy skill twice to reach level 12 (4 points total). Make sure you select **Increase Skill Level** and not **Increment**.

### Prerequisites

Some skills and techniques have [prerequisites](Prerequisites).

- If you add one without meeting its requirements, GCS displays an error message below it.
- Hover over the error to see what's missing.

> **_Example:_** Drag **Sweep (default Staff)** to Aelric's sheet. Note the error message calling out missing the Staff skill.
>
> Drag the **Staff** skill to Aelric's sheet to satisfy the prerequisite.

If your character can use magic, the next step is to add spells, which work just like skills.

---

## Step 5: Add a few spells

The **Spell list** is where you add [spells](Spells) (p. B242), if you character can cast them.

Spells in GCS work the same way as skills, but follow the special learning rules for magic (p. B235), which may change your point cost.

If a spell has unmet prerequisites, GCS will display an error icon with details.

### Adding spells

1. Open a spell library from the **Master Library**.
2. Add a spell in one of two ways: - Drag it from the library to your sheet, or - Right-click it and select **Copy to Character Sheet**.
   > **_Example:_** Expand **Master Library > Magic**, open the **Magic Spells library**, and add:
   >
   > - Create Fire (note the unmet prerequisite error; hover over it to see what's missing)
   > - Ignite Fire (note this spell satisfies the prerequisite for Create Fire)
   > - Fireball
   > - Shape Fire

You can raise a spell’s level the same way as a skill:

- Right-click the spell and select **Increase Skill Level**.

> [!tip]
> If you character does not cast spells, you can remove the **Spell list** by going to **Settings > Sheet Settings** and deleting it from the **Block Layout** section.

With your magical or mundane abilities set, it’s time to give your character the gear they’ll carry into adventure.

---

## Step 6: Add equipment

The **Equipment list** is where you add your character's gear (p. B264), including weapons and armor.

[Equipment](Equipment) is divided into two sections:

- **Carried Equipment:** Items on your person (equipped or not). Counts toward encumbrance.
- **Other Equipment:** Items you own but aren't carrying. These don't count toward encumbrance and can't be equipped. Items here don't provide any bonuses or stats in play.

### Tracking encumbrance

Carried items counts toward encumbrance (p. B17). The Equipment list calculates the total weight of all carried equipment and updates your current encumbrance level ![](./images/icons/icn-weight.svg) on the **Encumbrance, Move & Dodge block**.

### Adding equipment

To add equipment to your sheet:

1. Open an Equipment library from the **Master Library**.
2. Add an item in one of two ways:
   - Drag it from the library to your sheet, or
   - Right-click it and select **Copy to Character Sheet**.

> **_Example:_** Open the **Basic Set Equipment library** from the **Master Library** and add:
>
> - Backpack, Small
> - Torch
> - Tent, 1-Man

### Equipping items

Items are equipped by default when added to your sheet. Equipped items provide bonuses and update your stats on your sheet.

- Select the **check mark** next to each item on the **Carried Equipment list** to equip.
- Clear the **check mark** to carry an item but not equip. This removes any bonuses and stat updates.
- Drag items to **Other Equipment** if you aren't carrying them.

### Organizing items with containers

Some items can hold other items (like a backpack). [Containers](Containers) show a small arrow ![](./images/icons/icn-folderExpand.svg) next their name, which you can expand to show its contents.

> **_Example:_** Drag the torch and tent into Aelric's backpack (drag them to just underneath and slightly to the side). These items are now contained in it.

> [!tip]
> As your equipment list grows, you can keep it tidy by:
>
> - Collapsing containers to hide their contents.
> - Sorting items by selecting a column heading in any block (e.g., Name, Weight, Cost).
> - Search for items by name in the toolbar.

### Weapons and armor

- **Weapons (p. B267):** Equipped [weapons](Melee%20and%20Ranged%20Weapons) appear on the **Melee Weapon** and/or **Ranged Weapon** lists with their weapon stats.
  > **_Example:_** Add a **Dagger** and a **Quarterstaff** to Aelric's equipment (these are in the Basic Set Equipment library). The dagger appears for both melee and ranged weapons (since it can be stabbed or thrown).
- **Armor (p. B282):** Equipped armor updates the **Damage Resistance (DR)** values on the **Body type (Humanoid) block** based on the protection the armor provides.
  > **_Example:_** Add **Leather Armor** to Aelric's equipment and note the DR changes.

---

## Step 7: Save your character

Once your character is fully equipped, you’ll want to save your work so you can use and update your sheet during play. You can also print your sheet or export it to a PDF.

By default, GCS provides a **User Library** folder in the Library Explorer for you to save your character sheets and custom content. **Do not** save your files in the Master Library.

To save a character sheet:

1. Select **File > Save**.
2. Choose where to save your character file.
3. Select **Save**.

GCS saves characters as `.gcs` files, which you can re-open and edit anytime.

> [!tip]  
> Create subfolders in your User Library for different campaigns or characters to keep things organized.

> **_Example:_** Save your sheet as `Aelric the Apprentice.gcs` in a `GURPS Characters` subfolder inside your User Library.

As you play your GURPS game and your character changes (gains experience, learns new skills, acquires gear) you can edit the sheet at any time. Simply open the file, make your updates, and save again.

---

## Next Steps

Now that you have a complete, playable character, you can explore GCS’s other features to customize your sheet and speed up your games.

### Additional GCS Features

- **Building Characters:** Check out the deep dives into the [Library Explorer](Library%20Explorer) and the [Character Sheet](Character%20Sheet%20Overview).
- **[Notes](Notes):** Capture campaign notes, backstory, or reminders in [Markdown](Markdown%20Guide) format right on your sheet.
- **[Page References](Page%20References):** Link your PDF GURPS books to the Master Library so you can jump to the exact page for any rule or item.
- **[Calculator](Calculator):** Quickly determine jumping distances, throwing ranges, and hiking distances.
- **[Study time](Study%20time):** Track your character’s training hours for new skills or spells and see progress toward the next level.

### Add Custom Content

GCS isn’t limited to the Master Library. You can:

- Create your own advantages, disadvantages, skills, and spells.
- Add house-rule gear, traits, or templates for your campaign.
- Save them to your **User Library** for future use.
- Find other custom content or share them with others on the Discord server.

### Learn More About GCS

This guide covers only the basics. To discover more advanced features and tips, browse the rest of the **GCS User Guide** for detailed instructions and examples.

---

[Return to Home](Home)
