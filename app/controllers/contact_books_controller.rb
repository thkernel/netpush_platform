class ContactBooksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contact_book, only: [:show, :edit, :update, :destroy]

  layout "dashboard"
  
  # GET /contact_books
  # GET /contact_books.json
  def index
    @contact_books = ContactBook.all
  end

  # GET /contact_books/1
  # GET /contact_books/1.json
  def show
  end

  # GET /contact_books/new
  def new
    @contact_book = ContactBook.new
  end

  # GET /contact_books/1/edit
  def edit
  end

  # POST /contact_books
  # POST /contact_books.json
  def create
    @contact_book = current_user.contact_books.build(contact_book_params)

    respond_to do |format|
      if @contact_book.save
        @contact_books = ContactBook.all
        format.html { redirect_to @contact_book, notice: 'Contact book was successfully created.' }
        format.json { render :show, status: :created, location: @contact_book }
        format.js
      else
        format.html { render :new }
        format.json { render json: @contact_book.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /contact_books/1
  # PATCH/PUT /contact_books/1.json
  def update
    respond_to do |format|
      if @contact_book.update(contact_book_params)
        @contact_books = ContactBook.all
        format.html { redirect_to @contact_book, notice: 'Contact book was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_book }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @contact_book.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


def delete
      @contact_book = ContactBook.find(params[:contact_book_id])
    end
  # DELETE /contact_books/1
  # DELETE /contact_books/1.json
  def destroy
    @contact_book.destroy
    respond_to do |format|
      format.html { redirect_to contact_books_url, notice: 'Contact book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_book
      @contact_book = ContactBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_book_params
      params.require(:contact_book).permit(:name,  :description)
    end
end
