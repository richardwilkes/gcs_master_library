
> [!infobox]
> ![[@PORTRAIT|cover hm-sm]]
> ###### Attributes
>  |
> ---|---|---|---|
> **ST** | @ST | **WILL**|@WILL
> **DX** | @DX|**Fright Check**|@FRIGHT_CHECK
> **IQ** | @IQ|**PER**|@PERCEPTION
> **HT**| @HT|**Vision**|@VISION
>**HP**|@HP|**FP**|@FP
> ###### Description
>  |
> ---|---|---|---|
> **Gender** | @GENDER |**Hair**|@HAIR
> **Age** | @AGE |**Eyes**|@EYES
> **Height** | @HEIGHT |**Skin**|@SKIN
> **Weight** | @WEIGHT |**Hand**|@HAND
> **DR**|@GENERAL_DR|**TL** | @TL |


> [!info|bg-c-purple]- Overview
TOTAL Points: @TOTAL_POINTS
Player: @PLAYER

> [!column] Traits
>> [!metadata|text-Center bg-c-gray]- Advantages
@ADVANTAGES_ALL_LOOP_START>> @DESCRIPTION_PRIMARY   (@POINTS)
@ADVANTAGES_ALL_LOOP_END>
>> [!metadata|text-Center bg-c-gray]- Disdvantages
@DISADVANTAGES_ALL_LOOP_START>> @DESCRIPTION_PRIMARY   (@POINTS)
@DISADVANTAGES_ALL_LOOP_END>
>> [!metadata|text-Center bg-c-gray]- Languages
@LANGUAGES_LOOP_START>> @DESCRIPTION_PRIMARY  @DESCRIPTION_NOTES_PAREN
@LANGUAGES_LOOP_END>
>> [!metadata|text-Center bg-c-gray]- Reactions
@REACTION_LOOP_START>> @MODIFIER @SITUATION
@REACTION_LOOP_END>

> [!column|dataview] STATS
>> [!metadata|text-Center bg-c-red]- Skills
>> # 
|             Name             | Level | Relative Level | Points |
|:----------------------------:|:-----:|:--------------:|:------:|@SKILLS_LOOP_START
|@DESCRIPTION_PRIMARY @DESCRIPTION_NOTES_PAREN|@SL|@RSL|@POINTS|@SKILLS_LOOP_END
|                              |       |                |        |
> 
>>[!metadata|text-Center bg-c-red]- Conditional Modifiers
>> # 
@CONDITIONAL_MODIFIERS_LOOP_START>> 
@MODIFIER @SITUATION
@CONDITIONAL_MODIFIERS_LOOP_END>
>
>> [!metadata|text-Center bg-c-yellow]- Equipment
>> # 
|             Name             |  Weight | COST |
|:----------------------------:|:--------------:|:------:|@EQUIPMENT_LOOP_START
|@DESCRIPTION_PRIMARY @DESCRIPTION_NOTES_PAREN|@WEIGHT| $@COST|@EQUIPMENT_LOOP_END
> 
>> [!metadata|text-Center bg-c-green]- Encumbrance
>> # 
|Level| Max Load | Move | Dodge|
|:---:|:---:|:---:|:---:|@ENCUMBRANCE_LOOP_START
|@LEVEL| @MAX_LOAD|@MOVE| @DODGE|@ENCUMBRANCE_LOOP_END
>> 
>
>> [!metadata|text-Center bg-c-green]- Lifting and Moving
>> #
| |  |
|:--:|:--:|
>> |Basic Lift :                              |@BASIC_LIFT|
>> |One-Handed Lift:                   |@ONE_HANDED_LIFT|
>> |Two-Handed Lift:                   |@TWO_HANDED_LIFT|
>> |Shove & Knock Over:              |@SHOVE|
>> |Running Shove & Knock Over: |@RUNNING_SHOVE|
>> |Carry on Back:                        |@CARRY_ON_BACK|
>> |Shift Slightly:                          |@SHIFT_SLIGHTLY|
>



## NOTES:
[[@TITLE/Character Notes/@NAME Notes | Notes]]

## DM Notes

### Plot Hooks


### Hidden Details


### General Notes

