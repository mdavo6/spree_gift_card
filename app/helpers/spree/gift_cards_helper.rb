module Spree::GiftCardsHelper
  def variants_values(gift_card_variants)
    gift_card_variants.map { |variant| ["#{ variant.price_in(current_currency).display_price.to_s } - #{ variant.product.name }", variant.id] }
  end
end
