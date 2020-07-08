class CampaignContactbooksController < ApplicationController
  before_action :set_campaign_contactbook, only: [:show, :edit, :update, :destroy]

  # GET /campaign_contactbooks
  # GET /campaign_contactbooks.json
  def index
    @campaign_contactbooks = CampaignContactbook.all
  end

  # GET /campaign_contactbooks/1
  # GET /campaign_contactbooks/1.json
  def show
  end

  # GET /campaign_contactbooks/new
  def new
    @campaign_contactbook = CampaignContactbook.new
  end

  # GET /campaign_contactbooks/1/edit
  def edit
  end

  # POST /campaign_contactbooks
  # POST /campaign_contactbooks.json
  def create
    @campaign_contactbook = CampaignContactbook.new(campaign_contactbook_params)

    respond_to do |format|
      if @campaign_contactbook.save
        format.html { redirect_to @campaign_contactbook, notice: 'Campaign contactbook was successfully created.' }
        format.json { render :show, status: :created, location: @campaign_contactbook }
      else
        format.html { render :new }
        format.json { render json: @campaign_contactbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_contactbooks/1
  # PATCH/PUT /campaign_contactbooks/1.json
  def update
    respond_to do |format|
      if @campaign_contactbook.update(campaign_contactbook_params)
        format.html { redirect_to @campaign_contactbook, notice: 'Campaign contactbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign_contactbook }
      else
        format.html { render :edit }
        format.json { render json: @campaign_contactbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_contactbooks/1
  # DELETE /campaign_contactbooks/1.json
  def destroy
    @campaign_contactbook.destroy
    respond_to do |format|
      format.html { redirect_to campaign_contactbooks_url, notice: 'Campaign contactbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_contactbook
      @campaign_contactbook = CampaignContactbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campaign_contactbook_params
      params.require(:campaign_contactbook).permit(:uuid, :contact_book_id, :campaign_id, :status, :user_id)
    end
end
