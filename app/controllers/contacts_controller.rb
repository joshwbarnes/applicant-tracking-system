class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def show; end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :mobile_number, :position, :company_id, :job_id)
  end

  def set_company
    @contact = Contact.find(params[:id])
  end
end
