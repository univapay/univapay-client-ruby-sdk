
# Token Create Qr Scan Data

Token Create Qr Scan Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenCreateQrScanData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `scanned_qr` | `String` | Required | The QR/barcode payload scanned from the customer's payment app (Customer-Presented Mode). Only valid when `type` is `one_time` — the server rejects `subscription`/`recurring` token types for this payment type. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_create_qr_scan_data = TokenCreateQrScanData.new(
  scanned_qr: '091234567890123456789012345'
)
```

