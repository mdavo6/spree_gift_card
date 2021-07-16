module SpreeGiftCard
  module Spree
    module AppConfigurationDecorator

      def self.prepended(base)
        base.preference :allow_gift_card_redeem, :boolean, default: true
      end

    end
  end
end

::Spree::AppConfiguration.prepend(SpreeGiftCard::Spree::AppConfigurationDecorator) if ::Spree::AppConfiguration.included_modules.exclude?(SpreeGiftCard::Spree::AppConfigurationDecorator)
