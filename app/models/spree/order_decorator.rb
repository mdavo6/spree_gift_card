module SpreeGiftCard
  module Spree
    module OrderDecorator
      include Spree::Order::GiftCard
    end
  end
end

::Spree::Order.prepend(SpreeGiftCard::Spree::OrderDecorator)
