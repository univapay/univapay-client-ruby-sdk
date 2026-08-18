
# Checkout Theme

Widget theme applied to checkout.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutTheme`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `colors` | [`CheckoutThemeColors`](../../doc/models/checkout-theme-colors.md) | Optional | Hex colors applied to the checkout widget. Always resolves to the platform defaults shown here when not customized — never `null`. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_theme = CheckoutTheme.new(
  colors: CheckoutThemeColors.new(
    main_background: 'main_background8',
    secondary_background: 'secondary_background6',
    main_color: 'main_color0',
    main_text: 'main_text4',
    primary_text: 'primary_text8',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

