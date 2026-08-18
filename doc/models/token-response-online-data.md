
# Token Response Online Data

Token Response Online Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseOnlineData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand` | [`BaseOnlineDataBrand`](../../doc/models/base-online-data-brand.md) | Optional | Base Online Data Brand schema. `alipay_china`, `alipay_hk`, `gcash`, `dana`, `truemoney`, `kakaopay`, `tng`, `rabbit_line_pay`, `bpi`, `boost`, `tinaba`, `naver_pay`, `toss_pay`, `maya`, `grab_sg`, `kredivo_id`, `k_plus`, and `kaspi_kz` are Alipay+ regional wallets routed through the `alipay_plus_online` gateway family. |
| `call_method` | [`BaseOnlineDataCallMethod`](../../doc/models/base-online-data-call-method.md) | Optional | Base Online Data Call Method schema. |
| `os_type` | [`BaseOnlineDataOsType`](../../doc/models/base-online-data-os-type.md) | Optional | Base Online Data Os Type schema. |
| `user_identifier` | `String` | Optional | Consumer specific identifier required by some gateways for fraud prevention. |
| `user_identifier_source` | [`BaseOnlineDataUserIdentifierSource`](../../doc/models/base-online-data-user-identifier-source.md) | Optional | The source of the user identifier |
| `issuer_token` | `String` | Optional | Token provided by the issuer (if applicable). |
| `issuer_token_payload` | `String` | Optional | Additional payload from the issuer. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_online_data = TokenResponseOnlineData.new(
  brand: BaseOnlineDataBrand::WE_CHAT_ONLINE,
  call_method: BaseOnlineDataCallMethod::WEB,
  user_identifier: 'wechat_open_id_12345'
)
```

