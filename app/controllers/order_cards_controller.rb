class OrderCardsController < ApplicationController
  before_action :set_order_card, only: [:show, :edit, :update, :destroy]


  # GET /order_cards
  # GET /order_cards.json
  def index
    @order_cards = OrderCard.all
  end

  # GET /order_cards/1
  # GET /order_cards/1.json
  def show
  end

  # GET /order_cards/new
  def new
    @order_card = OrderCard.new
    render layout: "front"
  end

  # GET /order_cards/1/edit
  def edit
  end

  def success
    render layout: "front"
  end

  # POST /order_cards
  # POST /order_cards.json
  def create
    @order_card = OrderCard.new(order_card_params)

    respond_to do |format|
      if @order_card.save
        format.html { redirect_to success_path, notice: 'Order card was successfully created.' }
        format.json { render :show, status: :created, location: @order_card }
      else
        format.html { render :new }
        format.json { render json: @order_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_cards/1
  # PATCH/PUT /order_cards/1.json
  def update
    respond_to do |format|
      if @order_card.update(order_card_params)
        format.html { redirect_to @order_card, notice: 'Order card was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_card }
      else
        format.html { render :edit }
        format.json { render json: @order_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_cards/1
  # DELETE /order_cards/1.json
  def destroy
    @order_card.destroy
    respond_to do |format|
      format.html { redirect_to order_cards_url, notice: 'Order card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_card
      @order_card = OrderCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_card_params
      params.require(:order_card).permit(:first_name, :last_name, :country, :city, :address, :phone_number, :email, :card_type, :quantity, :status, :notes, attachments: [])
    end
end
