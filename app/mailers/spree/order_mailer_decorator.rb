module Spree
  module OrderMailerDecorator
    def gift_card_email(card_id, order_id)
      attachments.inline['BoldBLogo.png'] = File.read('app/assets/images/logo/BoldBLogoMainBlack.png')
      attachments.inline['AquaCollection.jpg'] = File.read('app/assets/images/SmallAquaCollectionImageForEmail.jpg')
      @gift_card = Spree::GiftCard.find_by(id: card_id)
      attachments["Gift Card for #{@gift_card.name}.pdf"] = Spree::BookkeepingDocument.find_by(printable_type: "Spree::GiftCard", printable_id: @gift_card.id).pdf
      @order = Spree::Order.find_by(id: order_id)
      subject = "#{Spree.t('gift_card_email.subject')}"
      @gift_card.update_attribute(:sent_at, Time.now)
      mail(to: @order.email, from: from_address, bcc: 'records@boldb.com.au', subject: subject)
    end
  end
end

::Spree::OrderMailer.prepend(Spree::OrderMailerDecorator)
