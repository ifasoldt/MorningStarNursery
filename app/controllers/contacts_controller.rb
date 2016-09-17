class ContactsController < ApplicationController
  before_action :require_admin, only: [:index]
  def index
    @contact = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact, status: 200
    else
      render json: @contact.errors, status: 404
    end
  end
end
