module SpreeGiftCard
  module Spree
    module ProductDecorator

      scope :gift_cards, -> { where(is_gift_card: true) }
      scope :not_gift_cards, -> { where(is_gift_card: false) }
    end
  end
end

::Spree::Product.prepend(SpreeGiftCard::Spree::ProductDecorator)
