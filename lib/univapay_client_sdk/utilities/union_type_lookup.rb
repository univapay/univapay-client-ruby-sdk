# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The `UnionTypeLookUp` class serves as a utility class for
  # storing and managing type combinator templates. It acts as a container for the templates
  # used in handling various oneof/anyof instances within the sdk.
  class UnionTypeLookUp
    include CoreLibrary
    # rubocop:disable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation
    def self.union_types
      {
        :TransactionToken => OneOf.new(
          [
            LeafType.new(CardTransactionToken, UnionTypeContext.new(
              discriminator_value: 'card',
              discriminator: 'payment_type'
            )),
            LeafType.new(KonbiniTransactionToken, UnionTypeContext.new(
              discriminator_value: 'konbini',
              discriminator: 'payment_type'
            )),
            LeafType.new(OnlineTransactionToken, UnionTypeContext.new(
              discriminator_value: 'online',
              discriminator: 'payment_type'
            )),
            LeafType.new(BankTransferTransactionToken, UnionTypeContext.new(
              discriminator_value: 'bank_transfer',
              discriminator: 'payment_type'
            )),
            LeafType.new(PaidyTransactionToken, UnionTypeContext.new(
              discriminator_value: 'paidy',
              discriminator: 'payment_type'
            )),
            LeafType.new(QrScanTransactionToken, UnionTypeContext.new(
              discriminator_value: 'qr_scan',
              discriminator: 'payment_type'
            )),
            LeafType.new(QrMerchantTransactionToken, UnionTypeContext.new(
              discriminator_value: 'qr_merchant',
              discriminator: 'payment_type'
            ))
          ]
        ),

        :GenericMetadataValue => AnyOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)]),
            LeafType.new(Object, UnionTypeContext.new(
              is_array: true
            ))
          ]
        ),

        :TransactionTokenCreateRequestData => AnyOf.new(
          [
            LeafType.new(TokenCreateCardData),
            LeafType.new(TokenCreateKonbiniData),
            LeafType.new(TokenCreateOnlineData),
            LeafType.new(TokenCreateBankTransferData),
            LeafType.new(TokenCreatePaidyData),
            LeafType.new(TokenCreateQrScanData),
            LeafType.new(TokenCreateQrMerchantData)
          ]
        ),

        :TransactionTokenCreateMetadataProps => OneOf.new(
          [
            LeafType.new(String),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)]),
            LeafType.new(Float)
          ]
        ),

        :TransactionTokenMetadataAdditionalProperties => AnyOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_dict: true,
            is_optional: true
          )
        ),

        :TransactionToken2 => OneOf.new(
          [
            LeafType.new(CardTransactionToken, UnionTypeContext.new(
              discriminator_value: 'card',
              discriminator: 'payment_type'
            )),
            LeafType.new(KonbiniTransactionToken, UnionTypeContext.new(
              discriminator_value: 'konbini',
              discriminator: 'payment_type'
            )),
            LeafType.new(OnlineTransactionToken, UnionTypeContext.new(
              discriminator_value: 'online',
              discriminator: 'payment_type'
            )),
            LeafType.new(BankTransferTransactionToken, UnionTypeContext.new(
              discriminator_value: 'bank_transfer',
              discriminator: 'payment_type'
            )),
            LeafType.new(PaidyTransactionToken, UnionTypeContext.new(
              discriminator_value: 'paidy',
              discriminator: 'payment_type'
            )),
            LeafType.new(QrScanTransactionToken, UnionTypeContext.new(
              discriminator_value: 'qr_scan',
              discriminator: 'payment_type'
            )),
            LeafType.new(QrMerchantTransactionToken, UnionTypeContext.new(
              discriminator_value: 'qr_merchant',
              discriminator: 'payment_type'
            ))
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :Charge => OneOf.new(
          [
            LeafType.new(ChargeWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'charge_updated',
              discriminator: 'event'
            )),
            LeafType.new(ChargeWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'charge_finished',
              discriminator: 'event'
            ))
          ]
        ),

        :Token => OneOf.new(
          [
            LeafType.new(TokenWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'token_created',
              discriminator: 'event'
            )),
            LeafType.new(TokenWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'token_updated',
              discriminator: 'event'
            )),
            LeafType.new(TokenWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'token_three_d_s_updated',
              discriminator: 'event'
            )),
            LeafType.new(TokenWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'token_cvv_auth_updated',
              discriminator: 'event'
            )),
            LeafType.new(TokenWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'token_cvv_auth_check_updated',
              discriminator: 'event'
            )),
            LeafType.new(TokenWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'token_replaced',
              discriminator: 'event'
            )),
            LeafType.new(TokenWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'recurring_token_deleted',
              discriminator: 'event'
            ))
          ]
        ),

        :Refund => OneOf.new(
          [
            LeafType.new(RefundWebhookCallback, UnionTypeContext.new(
              discriminator_value: 'refund_finished',
              discriminator: 'event'
            ))
          ]
        ),

        :Cancel => OneOf.new(
          [
            LeafType.new(CancelWebhookCallback, UnionTypeContext.new(
              discriminator_value: 'cancel_finished',
              discriminator: 'event'
            ))
          ]
        ),

        :Subscription => OneOf.new(
          [
            LeafType.new(SubscriptionWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'subscription_created',
              discriminator: 'event'
            )),
            LeafType.new(SubscriptionWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'subscription_payment',
              discriminator: 'event'
            )),
            LeafType.new(SubscriptionWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'subscription_completed',
              discriminator: 'event'
            )),
            LeafType.new(SubscriptionWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'subscription_failure',
              discriminator: 'event'
            )),
            LeafType.new(SubscriptionWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'subscription_canceled',
              discriminator: 'event'
            )),
            LeafType.new(SubscriptionWebhookEvent, UnionTypeContext.new(
              discriminator_value: 'subscription_suspended',
              discriminator: 'event'
            ))
          ]
        ),

        :BankTransfer => OneOf.new(
          [
            LeafType.new(BankTransferStatusWebhookCallback, UnionTypeContext.new(
              discriminator_value: 'bank_transfer_status_updated',
              discriminator: 'event'
            ))
          ]
        ),

        :Customs => OneOf.new(
          [
            LeafType.new(CustomsDeclarationWebhookCallback, UnionTypeContext.new(
              discriminator_value: 'customs_declaration_finished',
              discriminator: 'event'
            ))
          ]
        )
      }
    end
    # rubocop:enable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation

    def self.get(name)
      UnionTypeLookUp.union_types[name]
    end
  end
end
