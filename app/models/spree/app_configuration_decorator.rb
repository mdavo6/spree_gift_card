module Spree
  module AppConfigurationDecorator

    def self.included(base)
      base.preference :allow_gift_card_redeem, :boolean, default: true
    end

  end
end

::Spree::AppConfiguration.include(Spree::AppConfigurationDecorator)
