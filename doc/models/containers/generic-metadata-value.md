
# Generic Metadata Value

Allowed values for metadata properties. Values may be a string, number, boolean, null, or an array of any of the above — but not a nested object; the server rejects metadata whose direct property values are JSON objects.

## Data Type

`String | Float | TrueClass | FalseClass | Array[Object]`

## Cases

| Type |
|  --- |
| `String` |
| `Float` |
| `TrueClass \| FalseClass` |
| `Array[Object]` |

## String

### Initialization Code

#### Example

```ruby
value = 'sale'
```

## Float

### Initialization Code

#### Example

```ruby
value = 10
```

## TrueClass | FalseClass

### Initialization Code

#### Example

```ruby
value = true
```

## Array[Object]

### Initialization Code

#### Example

```ruby
value = [
  JSON.parse('"sale"'),
  JSON.parse('"promo"')
]
```

