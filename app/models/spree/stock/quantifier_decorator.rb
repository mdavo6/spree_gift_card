module SpreeGiftCard
  module Spree
    module Stock
      module QuantifierDecorator
        include Spree::QuantifierCanSupply
      end
    end
  end
end

::Spree::Stock::Quantifier.prepend(SpreeGiftCard::Spree::Stock::QuantifierDecorator)
