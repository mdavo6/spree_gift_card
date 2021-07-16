module SpreeGiftCard
  module Spree
    module ProductDecorator

      def self.prepended(base)
        base.scope :gift_cards, -> { where(is_gift_card: true) }
        base.scope :not_gift_cards, -> { where(is_gift_card: false) }
      end

    end
  end
end

::Spree::Product.prepend(SpreeGiftCard::Spree::ProductDecorator) if ::Spree::Product.included_modules.exclude?(SpreeGiftCard::Spree::ProductDecorator)
