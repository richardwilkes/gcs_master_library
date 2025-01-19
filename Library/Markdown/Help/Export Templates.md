As of GCS v5.15, GCS introduced two new ways of exporting textual versions of character sheets, while retaining the
old (and now deprecated) method used in previous releases:

- **GCS Text Template v1**, which makes no effort to make the output HTML-friendly (i.e. escaping what would be HTML
  directives in user-provided content, etc.).
- **GCS HTML Template v1**, which does try to escape user-provided content so that it will display correctly in a web
  page.

The first line of the file is used to determine the type of processing to perform on it. When the first line is "GCS
Text Template v1", without the surrounding quotes, and nothing else, the text templating facilities will be used. If,
instead, the first line is "GCS HTML Template v1", the HTML templating facilities will be used. If neither of those is
found, GCS will assume it is an old format pre-dating this change and use that processor instead. In a future release
(most likely sometime in 2024 or later), that old processor will be removed and those old templates will no longer give
the desired results.

Both of these new formats are based on the Go language's templating facilities. Details about GCS-specific functionality
is provided below and much more detail about Go's templating facilities and how they work can be found on
the <https://go.dev> site. Specifically, <https://pkg.go.dev/text/template> for the text template
and <https://pkg.go.dev/html/template> for the HTML template.

When the template is called, it will be given a `Sheet` value (the various data types are described below).

There are a number of top-level, GCS-specific, functions that have been made accessible within a template. These are
divided into two general categories, those that manipulate GCS's internal fixed-point numbers (`Number`) and those that
manipulate strings.

### Number Functions

- `numberFrom` — Returns the equivalent `Number` value of `value`
  - Parameter: `value` (int, float64, or string that contains a number)
- `numberToFloat` — Returns the equivalent floating-point number value of `value`
  - Parameter: `value` (`Number`)
- `numberToInt` — Returns the equivalent integer value of `value`
  - Parameter: `value` (`Number`)

### String Functions

- `caselessEqual` — Returns true if `left` and `right` are the same when case isn't considered
  - Parameter: `left` (string)
  - Parameter: `right` (string)
- `contains` — Returns true if `str` contains `substr`
  - Parameter: `str` (string)
  - Parameter: `substr` (string)
- `hasPrefix` — Returns true if `str` starts with `prefix`
  - Parameter: `str` (string)
  - Parameter: `prefix` (string)
- `hasSuffix` — Returns true if `str` ends with `suffix`
  - Parameter: `str` (string)
  - Parameter: `suffix` (string)
- `indexStr` — Returns an index into `str` where `substr` starts, or -1 if `substr` isn't contained in `str`.<br>
  *NOTE: This was named `index` prior to GCS v5.33.0, but was renamed due to conflicts with built-in functions that Go supplies.*
  - Parameter: `str` (string)
  - Parameter: `substr` (string)
- `join` — Returns a new string by concatenating the elements of `elems` to create a single string, placing `substr`
  between each element in the resulting string
  - Parameter: `elems`, ([]string)
  - Parameter: `sep` (string)
- `lastIndexStr` — Returns an index into `str` where the last `substr` starts, or -1 if `substr` isn't contained in `str`.<br>
  *NOTE: This was named `lastIndex` prior to GCS v5.33.0, but was renamed to be consistent with `indexStr`.*
  - Parameter: `str` (string)
  - Parameter: `substr` (string)
- `lower` — Returns the lowercase version of `str`
  - Parameter: `str` (string)
- `repeat` — Returns a new string consisting of `count` copies of `str`
  - Parameter: `str` (string)
  - Parameter: `count` (int)
- `replace` — Returns a copy of `str` with all non-overlapping instances of `old` replaced by `new`
  - Parameter: `str` (string)
  - Parameter: `old` (string)
  - Parameter: `new` (string)
- `split` — Returns a slice of sub-strings by splitting `str` into all sub-strings separated by `sep`
  - Parameter: `str` (string)
  - Parameter: `sep` (string)
- `splitN` — Returns a slice of sub-strings by splitting `str` into at most `count` sub-strings separated by `sep`
  - `str` (string)
  - `sep` (string)
  - `count` (int)
- `trim` — Returns a copy of `str` with all leading and trailing white space removed
  - Parameter: `str` (string)
- `trimPrefix` — Returns a copy of `str` without the `prefix` at the beginning
  - Parameter: `str` (string)
  - Parameter: `prefix` (string)
- `trimSuffix` — Returns a copy of `str` without the `suffix` at the end
  - Parameter: `str` (string)
  - Parameter: `suffix` (string)
- `upper` — Returns the uppercase version of `str`
  - Parameter: `str` (string)

The remainder of this document details the various data types that the data is made up of.

### AllEquipment

#### AllEquipment Fields

- `.Carried` ([]Equipment)
- `.CarriedValue` (Number)
- `.CarriedWeight` (string)
- `.Other` ([]Equipment)
- `.OtherValue` (Number)

### Attribute

#### Attribute Fields

- `.CombinedName` (string)
- `.FullName` (string)
- `.ID` (string)
- `.Name` (string)
- `.Points` (Number)
- `.Value` (Number)

### Attributes

#### Attributes Fields

- `.Pools` ([]Pool)
- `.PoolsByID` (map[string]Pool)<br>
  *NOTE: This did not exist prior to v5.33.0*
- `.Primary` ([]Attribute)
- `.PrimaryByID` (map[string]Attribute)<br>
  *NOTE: This did not exist prior to v5.33.0*
- `.Secondary` ([]Attribute)
- `.SecondaryByID` (map[string]Attribute)<br>
  *NOTE: This did not exist prior to v5.33.0*

### BodyType

#### BodyType Fields

- `.Locations` ([]HitLocation)
- `.Name` (string)

### ConditionalModifier

#### ConditionalModifier Fields

- `.ID` (string)
- `.Situation` (string)
- `.Sources` ([]Source)
- `.Total` (Number)

### Encumbrance

#### Encumbrance Fields

- `.Dodge` (int)
- `.IsCurrent` (boolean)
- `.Level` (int)
- `.MaxLoad` (string)
- `.Move` (int)
- `.Name` (string)
- `.Penalty` (int)

### Equipment

#### Equipment Fields

- `.Cost` (Number)
- `.Depth` (int)
- `.Description` (string)
- `.Equipped` (boolean)
- `.ExtendedCost` (Number)
- `.ExtendedWeight` (string)
- `.ID` (string)
- `.LegalityClass` (string)
- `.MaxUses` (int)
- `.ModifierNotes` (string)
- `.Notes` (string)
- `.PageRef` (string)
- `.ParentID` (string)
- `.Quantity` (Number)
- `.Tags` ([]string)
- `.TechLevel` (string)
- `.Type` (string)
- `.UnsatisfiedReason` (string)
- `.Uses` (int)
- `.Weight` (string)

### HitLocation

#### HitLocation Fields

- `.Depth` (int)
- `.DR` (string)
- `.Notes` (string)
- `.Penalty` (int)
- `.RollRange` (string)
- `.Where` (string)

### Lift

#### Lift Fields

- `.Basic` (string)
- `.CarryOnBack` (string)
- `.OneHanded` (string)
- `.RunningShove` (string)
- `.ShiftSlightly` (string)
- `.Shove` (string)
- `.TwoHanded` (string)

### Mana

#### Mana Fields

- `.Cast` (string)
- `.Maintain` (string)

### Margins

#### Margins Fields

- `.Bottom` (string)
- `.Left` (string)
- `.Right` (string)
- `.Top` (string)

### MeleeWeapon

#### MeleeWeapon Fields

- `.Block` (string)
- `.Damage` (string)
- `.Description` (string)
- `.Level` (Number)
- `.Notes` (string)
- `.Parry` (string)
- `.Reach` (string)
- `.Strength` (string)
- `.Usage` (string)

### Note

#### Note Fields

- `.Depth` (int)
- `.Description` (string)
- `.ID` (string)
- `.PageRef` (string)
- `.ParentID` (string)
- `.Type` (string)

### Number

A special type of number that uses a fixed number of decimal digits for calculations, unlike traditional floating-point
numbers.

#### Number Methods

- `.Abs` — Returns the absolute value of this value
- `.Add` — Returns the result of adding this number to `value`
  - Parameter: `value` (Number)
- `.Ceil` — Returns the value rounded up to the nearest whole number
- `.Comma` — Returns the string representation of this value, but with commas for values of 1000 and greater
- `.CommaWithSign` — Same as `.Comma`, but prefixes the value with a '+' if it is positive
- `.Dec` — Returns the value decremented by 1
- `.Div` — Returns the result of dividing this number by `value`
  - Parameter: `value` (Number)
- `.Inc` — Returns the value incremented by 1
- `.Max` — Returns the maximum of this value or `value`
  - Parameter: `value` (Number)
- `.Min` — Returns the minimum of this value or `value`
  - Parameter: `value` (Number)
- `.Mod` — Returns the remainder after subtracting all full multiples of the passed-in `value` from this number
  - Parameter: `value` (Number)
- `.Mul` — Returns the result of multiplying this number by `value`
  - Parameter: `value` (Number)
- `.Round` — Returns the nearest integer value, rounding half away from zero
- `.String` — Returns the string representation of this value
- `.StringWithSign` — Same as `.String`, but prefixes the value with a '+' if it is positive
- `.Sub` — Returns the result of subtracting `value` from this number
  - Parameter: `value` (Number)
- `.Trunc` — Returns a value which has everything to the right of the decimal place truncated

### Page

#### Page Fields

- `.Height` (string)
- `.Margins` (Margins)
- `.Width` (string)

### Points

#### Points Fields

- `.Advantages` (Number)
- `.Ancestry` (Number)
- `.Attributes` (Number)
- `.Disadvantages` (Number)
- `.Quirks` (Number)
- `.Skills` (Number)
- `.Spells` (Number)
- `.Total` (Number)
- `.Unspent` (Number)

### Pool

#### Pool Fields

- `.CombinedName` (string)
- `.Current` (Number)
- `.FullName` (string)
- `.ID` (string)
- `.Maximum` (Number)
- `.Name` (string)
- `.Points` (Number)

### RangedWeapon

#### RangedWeapon Fields

- `.Accuracy` (string)
- `.Bulk` (string)
- `.Damage` (string)
- `.Description` (string)
- `.Level` (Number)
- `.Notes` (string)
- `.Range` (string)
- `.RateOfFire` (string)
- `.Recoil` (string)
- `.Shots` (string)
- `.Strength` (string)
- `.Usage` (string)

### Sheet

This is the object passed in to the template. All other data is derived from it.

#### Sheet Fields

- `.Age` (string)
- `.Attributes` (Attributes)
- `.Birthday` (string)
- `.BodyType` (BodyType)
- `.ConditionalModifiers` ([]ConditionalModifier)
- `.CreatedOn` (string)
- `.EmbeddedPortraitDataURL` (string)
- `.Encumbrance` ([]Encumbrance)
- `.Equipment` (AllEquipment)
- `.Eyes` (string)
- `.Gender` (string)
- `.GridTemplate` (string)
- `.Hair` (string)
- `.Handedness` (string)
- `.Height` (string)
- `.Lift` (Lift)
- `.MeleeWeapons` ([]MeleeWeapon)
- `.ModifiedOn` (string)
- `.Name` (string)
- `.Notes` ([]Note)
- `.Organization` (string)
- `.Page` (Page)
- `.Player` (string)
- `.Points` (Points)
- `.RangedWeapons` ([]RangedWeapon)
- `.Reactions` ([]ConditionalModifier)
- `.Religion` (string)
- `.SizeModifier` (int)
- `.Skills` ([]Skill)
- `.Skin` (string)
- `.Spells` ([]Spell)
- `.Swing` (string)
- `.TechLevel` (string)
- `.Thrust` (string)
- `.Title` (string)
- `.Traits` ([]Trait)
- `.Weight` (string)

### Skill

#### Skill Fields

- `.Depth` (int)
- `.Description` (string)
- `.Difficulty` (string)
- `.ID` (string)
- `.Level` (string)
- `.ModifierNotes` (string)
- `.Notes` (string)
- `.PageRef` (string)
- `.ParentID` (string)
- `.Points` (Number)
- `.RelativeLevel` (string)
- `.Tags` ([]string)
- `.Type` (string)
- `.UnsatisfiedReason` (string)

### Source

#### Source Fields

- `.Amount` (Number)
- `.Source` (string)

### Spell

#### Spell Fields

- `.Class` (string)
- `.Colleges` ([]string)
- `.Depth` (int)
- `.Description` (string)
- `.Difficulty` (string)
- `.Duration` (string)
- `.ID` (string)
- `.Level` (string)
- `.Mana` (Mana)
- `.Notes` (string)
- `.PageRef` (string)
- `.ParentID` (string)
- `.Points` (Number)
- `.RelativeLevel` (string)
- `.Resist` (string)
- `.Rituals` (string)
- `.Tags` ([]string)
- `.TimeToCast` (string)
- `.Type` (string)
- `.UnsatisfiedReason` (string)

### Trait

#### Trait Fields

- `.Depth` (int)
- `.Description` (string)
- `.ID` (string)
- `.ModifierNotes` (string)
- `.Notes` (string)
- `.PageRef` (string)
- `.ParentID` (string)
- `.Points` (Number)
- `.Tags` ([]string)
- `.Type` (string)
- `.UnsatisfiedReason` (string)
- `.UserDescription` (string)
