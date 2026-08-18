
# Checkout Qr Scan Configuration

QR-scan (CPM) payment settings applied to checkout.

*This model accepts additional fields of type Object.*

## Structure

`CheckoutQrScanConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Whether QR-scan payments are enabled. |
| `forbidden_qr_scan_gateways` | `Array[String]` | Optional | QR-scan gateways disabled for the merchant. Common values include `alipay`, `alipay_plus`, `pay_pay`, `we_chat`, `univapay`, and `test`. `null` when no gateway is forbidden. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
checkout_qr_scan_configuration = CheckoutQrScanConfiguration.new(
  enabled: true,
  forbidden_qr_scan_gateways: [
    'forbidden_qr_scan_gateways7'
  ],
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

