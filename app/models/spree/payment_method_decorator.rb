module SpreeGiftCard
  module Spree
    module PaymentMethodDecorator
      scope :gift_card, -> { where(type: "Spree::PaymentMethod::GiftCard") }

      def gift_card?
        self.class == Spree::PaymentMethod::GiftCard
      end
    end
  end
end

::Spree::PaymentMethod.prepend(SpreeGiftCard::Spree::PaymentMethodDecorator)
