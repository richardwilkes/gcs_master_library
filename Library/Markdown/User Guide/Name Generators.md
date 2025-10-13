### Name Generators

There are currently (as of GCS v5.18) four types of name generators that can be used with Ancestry definitions:

- `simple`
- `markov_letter`
- `markov_run`
- `compound`

A name generator definition is a file in the Settings/Ancestries directory of one of your libraries with the extension `.names`. These all contain json content that defines what you want to have happen, as described below.

##### Common Fields

Each of the name generators have some fields in common with each other, which I'll describe here before the actual file definitions, below.

- `type`: this must be present and its value must be one of the name generator types listed above.
- `no_lowered`: this field is optional, and when not present is assumed to be false. When false, the resulting name will be forced to lowercase before being returned. When true, it is left as-is.
- `no_first_to_upper`: this field is optional, and when not present is assumed to be false. When false, the resulting name will have its first letter forced to uppercase before being returned. When true, it is left as-is. This adjustment runs after any adjustment made for the no_lowered option.

There are three different possibilities for the training data, which are looked for in order and the first field found is used:

- `built_in_training_data`: this indicates one of the built-in data sets should be used. This field may be any one of these values:
  - `american_male`: first names of American males from http://www.ssa.gov/oact/babynames, weighted for how common they are.
  - `american_female`: first names of American females from http://www.ssa.gov/oact/babynames, weighted for how common they are.
  - `american_last`: last names of Americans from https://www2.census.gov/topics/genealogy/2010surnames, weighted for how common they are.
  - `unweighted_american_male`: first names of American males from http://www.ssa.gov/oact/babynames.
  - `unweighted_american_female`: first names of American females from http://www.ssa.gov/oact/babynames.
  - `unweighted_american_last`: last names of Americans from https://www2.census.gov/topics/genealogy/2010surnames.
- `weighted_training_data`: this is json object containing pairs of names and weights, like this:
    ```json
    {
      "john": 45,
      "richard": 22
    }
    ```
- `training_data`: this is a json array containing a list of names, like this:
    ```json
    [
      "john",
      "richard"
    ]
    ```

The examples below all use `training_data`, but could have easily been written to use `built_in_training_data` or `weighted_training_data` instead.

#### Simple

As the name suggests, this is the simpliest of the name generators.

```json
{
  "type": "simple",
  "no_lowered": false,
  "no_first_to_upper": false,
  "training_data": [
    "first",
    "second"
  ]
}
```

#### Markov Letter

This option uses [Markov chains](https://en.wikipedia.org/wiki/Markov_chain) from the letters in the training data to generate names.

```json
{
  "type": "markov_letter",
  "no_lowered": false,
  "no_first_to_upper": false,
  "depth": 3,
  "training_data": [
    "first",
    "second"
  ]
}
```

The `depth` field is optional and will default to 3 if not specified. It can range from 1 to 5 and indicates how many consecutive letters should be considered for the chain.

#### Markov Run

This option uses [Markov chains](https://en.wikipedia.org/wiki/Markov_chain) from decomposing the training data into runs of vowels and consonants to generate names.

```json
{
  "type": "markov_run",
  "no_lowered": false,
  "no_first_to_upper": false,
  "training_data": [
    "first",
    "second"
  ]
}
```

#### Compound

This is the most complex of the available options. It allows you to build a name up using multiple other name generators.

```json
{
  "type": "compound",
  "no_lowered": false,
  "no_first_to_upper": false,
  "separator": " ",
  "compound": [
    {
      "type": "simple",
      "no_lowered": false,
      "no_first_to_upper": false,
      "training_data": [
        "first",
        "second"
      ]
    },
    {
      "type": "markov_letter",
      "no_lowered": false,
      "no_first_to_upper": false,
      "depth": 3,
      "training_data": [
        "first",
        "second"
      ]
    }
  ]
}
```

The `separator` field is optional and will default to an empty string if not specified. It can be any fixed text you'd like placed between each piece of generated text from the name generators this generator is stringing together. For example, if you specify a separator value of "-" and you had two generators listed in the compound field which generated "Lloyd" and "Atkinson", the result would be "Lloyd-Atkinson".

The `compound` field contains a json array of other name generators to use for the components of this generator. The results of each will be strung together, optionally with some separator text between each.