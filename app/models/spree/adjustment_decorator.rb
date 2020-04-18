module SpreeGiftCard
  module Spree
    module AdjustmentDecorator
      scope :gift_card, -> { where(source_type: 'Spree::GiftCard') }
    end
  end
end

::Spree::GiftCard.prepend(SpreeGiftCard::Spree::AdjustmentDecorator)
