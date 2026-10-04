# Overview

This page sets out some stylistic guidelines on the master library files.  Additions to the master library should follow these, however they are only guidelines and usability is the primary concern.

Be aware of copyright restrictions in entering data to the library.  Game aid notes and data are generally permitted, such as the name of a trait and a note of its effect on attributes.  Descriptive text or rules on how the game works would generally not be permitted.

# Traits

# Skills

# Spells

# General template notes

## General
* Have all elements of the template contained within a suitably named container with a suitable page reference set.  Where containers are required for multiple areas (traits, skills, spells) ensure they all have page references and the same name.

## Choices
* Where there are a selection of traits, skills or spells place them into a New Trait/Skill/Spell/Equipment Choice with instructions on what point value or count the user should select.
  - Trait/Skill/Spell/Equipment items within the choice can be organised and grouped together with Trait/Skill/Spell/Equipment Containers, if they have the "Picked as a Unit" checkbox unchecked.
* Where a selection of advantages are offered with an instruction to choose a set number of points, set this as "Points / is".
  - If the template includes options to spend leftover points on other skills or abilities, set this as "Points / is at most".
* Similarly where a selection of disadvantages are offered with an instruction to shoose a set number of (negative) points, set this as "Points / is".
* For skills, templates tend to have the instruction to choose a set number with each skill in the selection at the same point cost.  As such can set these to be "Count / is".

## Adding extra levels
* Where a skill option is to spend a certain number of points on another skill, this can be implemented by listing the skill again. When the template is added to the character sheet the skills will be automatically merged.
* Automatic merging isn't enabled for traits, so a different approach must be taken to increase the level of an existing trait where you may not want to have multiple traits (for example Magery).  Add a dummy trait costed as the difference in cost for adding a level, named to instruct the user to increase the level on the other trait.  And finally add a pre-requisite that will always fail such as the character does not have a trait with the same name as the dummy trait.
* Identical spells can merge in the same way that skills do when added to a character sheet, so additional levels to a spell can be achieved by listing the spell again.

## Modifiers
* Where the user should choose modifiers to a Trait/Equipment item, delete modifiers that shouldn't be chosen and use Modifier Choices to guide the user on what to do.
* Template items should have the Preconfigured flag set if they have any `@Substitutions@` that are set, or any modifiers have been preselected (or none of the modifiers should be selected).
  - Users can still be prompted to pick a modifier when it's Preconfigured, if they are inside a Modifier Choice container where a choice is Mandatory but none have been selected.

# Racial templates
* Have a trait container with type set to "Ancestry", with the page reference set.
* If a suitable Ancestry option exists, select that in the Ancestry container drop down and this will ensure suitable random names, heights, weights, etc are used.
* It is not necessary to have an "Attributes" container within the Ancestry one, as GCS will just add everything to the Ancestry points total
* It is not possible to enforce an Ancestry

# Profession templates
* Under the main skills container for the profession, have sub-containers for "Primary Skills", "Secondary Skills" and "Background Skills"

# Characters
* If built from a reference source, such as a GURPS book, add a note with a link to the source page
* Any traits which amend attributes (such as "Increased ST") should be in a Trait Container tagged with type "Attributes"
* Ensure the correct body type is selected.  Click on the stick figure at the top left, then either edit to create a custom type or select a standard one from the three-line menu at top right.
