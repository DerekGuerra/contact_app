class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create 
    @contact = Contact.new(first_name: params[:input_first_name], last_name: params[:input_last_name], middle_name: params[:input_middle_name], email: params[:input_email], phone_number: params[:input_phone_number], bio: params[:input_bio])
    if @contact.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def update
    #find Contact
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    #update contact
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone_number = params[:phone_number]
    if @contact.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
    
  end

  def destroy
    #find contact
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    #delete contact
    @contact.destroy
    render 'destroy.json.jbuilder'
  end 
end 
 