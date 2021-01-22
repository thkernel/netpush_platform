class WatchListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_watch_list, only: [:show, :edit, :update, :destroy]
	layout "dashboard"

  # GET /watch_lists
  # GET /watch_lists.json
  def index
    @watch_lists = WatchList.all
  end

  # GET /watch_lists/1
  # GET /watch_lists/1.json
  def show
  end

  # GET /watch_lists/new
  def new
    @watch_list = WatchList.new
  end

  def import_watchlist_modal
  end

  def import_watchlist
    #watchlist_book_id = params[:watchlist_book_id]
    file = params[:file_name]
    
    @watch_lists = WatchList.all

    respond_to do |format|

      if import_watchlist_processing?(file,  current_user)
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

  # GET /watch_lists/1/edit
  def edit
  end

  # POST /watch_lists
  # POST /watch_lists.json
  def create
    @watch_list = WatchList.new(watch_list_params)

    respond_to do |format|
      if @watch_list.save
        format.html { redirect_to @watch_list, notice: 'Watch list was successfully created.' }
        format.json { render :show, status: :created, location: @watch_list }
      else
        format.html { render :new }
        format.json { render json: @watch_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watch_lists/1
  # PATCH/PUT /watch_lists/1.json
  def update
    respond_to do |format|
      if @watch_list.update(watch_list_params)
        format.html { redirect_to @watch_list, notice: 'Watch list was successfully updated.' }
        format.json { render :show, status: :ok, location: @watch_list }
      else
        format.html { render :edit }
        format.json { render json: @watch_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watch_lists/1
  # DELETE /watch_lists/1.json
  def destroy
    @watch_list.destroy
    respond_to do |format|
      format.html { redirect_to watch_lists_url, notice: 'Watch list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watch_list
      @watch_list = WatchList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def watch_list_params
      params.require(:watch_list).permit(:uid, :serial_number, :full_name, :program_list, :office, :additional_information, :party_country, :watchlist_populated_author, :status, :user_id)
    end


    #Import watchlist

    def import_watchlist_processing?(file,user)
      # Opening file
      creek = Creek::Book.new(file.path)
      puts "File path: #{file.path}"

      WatchList.destroy_all


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
                
                serial_number = row[cell[0]]
                full_name = row[cell[1]]
                program_list = row[cell[2]]
                office = row[cell[3]]
                additional_information = row[cell[4]]
                party_country = row[cell[5]]
                watchlist_populated_author = row[cell[6]]

                
                # Save into watchlist
                watchlist = WatchList.new
                watchlist.serial_number = serial_number
                watchlist.full_name = full_name
                watchlist.program_list = program_list
                watchlist.office  = office
                watchlist.additional_information = additional_information
                watchlist.party_country =  party_country
                watchlist.watchlist_populated_author = watchlist_populated_author

                watchlist.user_id = user.id
                if watchlist.save

                  puts "Saving"
                end

              else
                next
              end
              
             
          end


      end

    end

end
