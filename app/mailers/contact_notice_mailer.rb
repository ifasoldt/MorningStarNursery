class ContactNoticeMailer < ApplicationMailer
  def contact_mailer(contact)
      @contact = contact
      mail(:subject => "Contact Request From #{@contact.name}")
  end
end
