module Spree
  module OrderDecorator

    include Spree::Order::GiftCard

  end
end

::Spree::Order.prepend(Spree::OrderDecorator)
