class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_action :set_contact_book, only: [:index, :new]
  layout "dashboard"
  attr_accessor :contact_book

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
    
    
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    
    @contact = Contact.new(contact_book_id: @contact_book.id)
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = current_user.contacts.build(contact_params)

    respond_to do |format|
      if @contact.save
        @contacts = Contact.all
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
        format.js
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        @contacts = Contact.all
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


    def delete
      @contact = Contact.find(params[:contact_id])
    end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def set_contact_book
      

      
        
        @contact_book ||= ContactBook.find_by(uuid: params[:contact_book])
        
        
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :gender, :main_phone_number, :email, :country, :city, :address, :notes, :contact_book_id)
    end
end
