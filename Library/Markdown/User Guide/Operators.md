Operators define how GCS compares values in fields for [Prerequisites](Prerequisites), [Features](Features), [Defaults](Defaults), [Trait Modifiers](Trait%20Modifiers), and [Equipment Modifiers](Equipment%20Modifiers).

Some operators are used with **text fields** (names, notes, tags), while others are used with **numbers** (levels, modifiers).

## Available operators

| Operator                              | Works with   | Description                               |
| ------------------------------------- | ------------ | ----------------------------------------- |
| `is anything`                         | Text, Number | Always passes                             |
| `is` / `is not`                       | Text, Number | Matches exactly / does not match          |
| `is at least` / `is at most`          | Number       | Minimum or maximum value                  |
| `contains` / `does not contain`       | Text         | Must include / must not include the value |
| `starts with` / `does not start with` | Text         | Must (not) begin with the value           |
| `ends with` / `does not end with`     | Text         | Must (not) end with the value             |

## Using operators

- In **Prerequisites**, operators control how rules check for required traits, skills, or attributes.
- In **Features**, operators define how modifiers apply to skills, spells, or weapons.
- In **Defaults**, operators are used to set Tech Level rules.

---

[Return to Home](Home)
