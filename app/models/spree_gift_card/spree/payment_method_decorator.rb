module SpreeGiftCard
  module Spree
    module PaymentMethodDecorator

      def self.prepended(base)
        base.scope :gift_card, -> { where(type: "Spree::PaymentMethod::GiftCard") }
      end

      def gift_card?
        self.class == ::Spree::PaymentMethod::GiftCard
      end

    end
  end
end

::Spree::PaymentMethod.prepend(SpreeGiftCard::Spree::PaymentMethodDecorator) if ::Spree::PaymentMethod.included_modules.exclude?(SpreeGiftCard::Spree::PaymentMethodDecorator)
