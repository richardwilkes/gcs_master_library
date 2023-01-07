[<< Back to Overview](./Overview.md "Overview")

# Equipment List
Equipment lists display all the carried and other equipment. The only difference between the two is carried equipment has an equipped column. That, plus all the encumbrance and calculation differences. Templates always add equipment as *carried* equipment.

## Usage
For common functionality, see [List](./List.md "List"). Read that first.

Operations specific to Equipment Lists are detailed here.

### Add
See [Equipment](./Equipment.md "Equipment") for details on sources.

### Modify
From the Edit/Context menu:
- **Increment/Decrement** : item quantity
- **Increment/Decrement Uses** : number of times used
- **Increase/Decrease Technology Level** : 0-12, see B27
- **Toggle State** : equipped state
- **Convert to Container** : makes it a container

Some of these options are available or not based on hitting limits or if they apply to the settings of the item.

Covert to container makes any item (e.g.: socks, a '55 Chevy, gum) a container, weight, quantity, features and all. Use with care.

## Columns
Most of these columns are defined by GURPS. See B264-289 for details. 

- **Equipped ( ![](./img/check.png "Equipped" ) )** : in hand/claw/mitt and ready to use
- **Quantity ( # )** : octothorp, universal symbol for quantity ... or tic tac toe
- **\<x> Equipment** : carried or other list, cost and maybe weight
- **Uses** : see below
- **TL** : technology level, if assigned
- **LC** : legality class
- **Cost Each ( ![](./img/coins.png "Cost" ) )** : unit cost
- **Weight Each ( ![](./img/bag-dark.png "Weight" ) )** : unit cost
- **Cost Extended ( ![](./img/coins-ext.png "Cost" ) )** : total cost
- **Weight Each ( ![](./img/bag-dark-ext.png "Weight" ) )** : total weight
- **[Page Reference](./Page%20Reference.md "Page Reference") ( ![]( ./img/flag.png "Page Reference") )** : links to stuff

Click equipped field to add or remove the check. When equipped, the item will impact other blocks and calculations (e.g.: encumbrance, weapon lists), as defined by the items features. This field is only present in the character sheet carried equipment list.

### Uses
This is how many times the item can be used before it is "useless". Increment and decrement through the context menu or menu bar.

Maximum uses is set through the Detail Editor.

**Fancy Tip:** Stacked items are not individually tracked for usage. Create a container and add single items with individual use counts. When done emptying that blaster into the enemy, mark off the battery. Remember to recycle.

## Parent
[Character Sheet](./Character%20Sheet.md "Character Sheet")
[Character Template](./Character%20Template.md "Character Template")
[Equipment Library](./Library%20Tree.md "Library Tree:Equipment")

***Last updated for v5.7.0***