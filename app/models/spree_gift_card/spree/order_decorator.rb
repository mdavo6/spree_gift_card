module SpreeGiftCard
  module Spree
    module OrderDecorator

      def self.prepended(base)
        base.include ::Spree::Order::GiftCard
      end

    end
  end
end

::Spree::Order.prepend(SpreeGiftCard::Spree::OrderDecorator) if ::Spree::Order.included_modules.exclude?(SpreeGiftCard::Spree::OrderDecorator)
