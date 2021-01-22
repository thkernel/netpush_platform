class CardOrdersController < ApplicationController
  before_action :authenticate_user! , only: [:show, :edit, :update, :destroy]
  before_action :set_card_order, only: [:show, :edit, :update, :destroy]
  

  # GET /order_cards
  # GET /order_cards.json
  def index
    @card_orders = CardOrder.all
    render layout: "dashboard"
  end

  # GET /order_cards/1
  # GET /order_cards/1.json
  def show
  end

  # GET /order_cards/new
  def new
    @identity_types = IdentityType.all
    @card_types = CardType.all
    @uba_account_types = UbaAccountType.all


    @card_order = CardOrder.new
    render layout: "front"
  end

  # GET /order_cards/1/edit
  def edit
    render layout: "dashboard"
  end

  def success
    render layout: "front"
  end

  # POST /order_cards
  # POST /order_cards.json
  def create
    @card_order = CardOrder.new(card_order_params)

    respond_to do |format|
      if @card_order.save
        format.html { redirect_to success_path, notice: 'Card order was successfully created.' }
        format.json { render :show, status: :created, location: @card_order }
      else
        format.html { render :new }
        format.json { render json: @card_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_cards/1
  # PATCH/PUT /order_cards/1.json
  def update
    respond_to do |format|
      if @card_order.update(card_order_params)
        format.html { redirect_to @card_order, notice: 'Card order was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_order }
      else
        format.html { render :edit }
        format.json { render json: @card_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_cards/1
  # DELETE /order_cards/1.json
  def destroy
    @card_order.destroy
    respond_to do |format|
      format.html { redirect_to card_orders_url, notice: 'Card order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_order
      @card_order = CardOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def card_order_params
      params.require(:card_order).permit(:first_name, :last_name, :country, :city, :address, :phone_number, :email, :card_type, :quantity, :status, :notes, attachments: [])
    end
end
