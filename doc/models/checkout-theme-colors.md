
# Checkout Theme Colors

Hex colors applied to the checkout widget. Always resolves to the platform defaults shown here when not customized — never `null`.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutThemeColors`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `main_background` | `String` | Optional | Main background color. |
| `secondary_background` | `String` | Optional | Secondary background color. |
| `main_color` | `String` | Optional | Main accent color. |
| `main_text` | `String` | Optional | Main text color. |
| `primary_text` | `String` | Optional | Primary text color. |
| `secondary_text` | `String` | Optional | Secondary text color. |
| `base_text` | `String` | Optional | Base text color. |
| `body_background` | `String` | Optional | Body background color. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_theme_colors = CheckoutThemeColors.new(
  main_background: '#FFFFFF',
  secondary_background: '#F5F8FC',
  main_color: '#4C5F85',
  main_text: '#FFFFFF',
  primary_text: '#4C5F85',
  secondary_text: '#4C5F85',
  base_text: '#4C5F85',
  body_background: '#FFFFFF',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

