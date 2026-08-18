
# Checkout Recurring Token Privilege

Level of recurring-charge privilege granted to transaction tokens created under this store: `none` disallows recurring use, `bounded` allows a limited number of recurring charges, and `infinite` allows unlimited recurring charges.

## Enumeration

`CheckoutRecurringTokenPrivilege`

## Fields

| Name |
|  --- |
| `NONE` |
| `BOUNDED` |
| `INFINITE` |

## Example

```ruby
checkout_recurring_token_privilege = CheckoutRecurringTokenPrivilege::NONE
```

