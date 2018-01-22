class ContactsController < ApplicationController
  before_action :require_admin, only: [:index]

  def index
    @contacts = Contact.all.order('created_at desc')
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactNoticeMailer.contact_mailer(@contact).deliver_now
      flash.notice = "Message successfully sent"
      redirect_to root_path
    else
      flash.alert = "Please make sure your email and message are present"
      redirect_back fallback_location: root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
