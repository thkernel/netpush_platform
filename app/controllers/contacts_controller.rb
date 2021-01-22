
require "creek"

class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_action :set_contact_book, only: [:index, :new, :import_contacts_modal]

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

  def import_contacts_modal
  end

  def import_contacts
    contact_book_id = params[:contact_book_id]
    file = params[:file_name]
    
    @contacts = Contact.all

    respond_to do |format|

      if import_contacts_processing?(file, contact_book_id, current_user)
        format.html { redirect_to @log, notice: 'Log was successfully created.' }
        format.json { render :show, status: :created, location: @log }
        format.js
      else
        format.html { render :new }
        format.json { render json: @log.errors, status: :unprocessable_entity }
        format.js
      end
    end
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
      format.html { redirect_to contacts_path(cb: ContactBook.find(@contact.contact_book_id).uuid), notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find_by(uid: params[:uid])
    end

    def set_contact_book
        @contact_book ||= ContactBook.find_by(uuid: params[:cb])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :gender, :main_phone_number, :email, :country, :city, :address, :notes, :contact_book_id)
    end


    #Import contacts

    def import_contacts_processing?(file, contact_book_id,user)
      # Opening file
      creek = Creek::Book.new(file.path)
      puts "File path: #{file.path}"

      # Getting the first sheet
      sheet = creek.sheets[0]
      record_count = 0

      # Loop all sheet rows
      puts "Je compte: #{sheet.rows.count}"
      puts "Feuille: #{sheet}"

      #If laboratory
        sheet.rows.each_with_index do |row, index|
          puts "L'index avant condition: #{index}"
        
          unless index == 0
              puts "Entrer dans la boucle à l'index: #{index}"
              # The row return a hash, we save all Hash key in a new Array
              cell = row.keys

            
              
              if row[cell[0]].present?  
                #puts "IN GLOBAL"
                #if Contact.search_by_name(main_phone_number: row[cell[0]]).present?
                  #puts "EXISTE"
                  #next
                #end
                contact_first_name = row[cell[0]]
                contact_last_name = row[cell[1]]
                contact_gender = row[cell[2]]
                contact_main_phone_number = row[cell[3]]
                contact_email = row[cell[4]]
                contact_country = row[cell[5]]
                contact_city = row[cell[6]]
                contact_address = row[cell[7]]

                


                
                # Save into contact
                contact = Contact.new
                contact.first_name = contact_first_name
                contact.last_name = contact_last_name
                contact.gender = contact_gender
                contact.main_phone_number  = contact_main_phone_number
                contact.email = contact_email
                contact.country =  contact_country
                contact.city = contact_country
                contact.address = contact_address

                contact.contact_book_id =  contact_book_id
                contact.user_id = user.id
                if contact.save

                  puts "Saving"
                end

              else
                next
              end
              
             
          end


      end

    end


    
end
