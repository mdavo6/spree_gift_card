module SpreeGiftCard
  module Spree
    module StoreCreditCategoryDecorator
      scope :gift_card, -> { where(name: 'Gift Card') }
    end
  end
end

::Spree::StoreCreditCategory.prepend(SpreeGiftCard::Spree::StoreCreditCategoryDecorator)
