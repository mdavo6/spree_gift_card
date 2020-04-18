module SpreeGiftCard
  module Spree
    module AppConfigurationDecorator
      preference :allow_gift_card_redeem, :boolean, default: true
    end
  end
end

::Spree::AppConfiguration.prepend(SpreeGiftCard::Spree::AppConfigurationDecorator)
