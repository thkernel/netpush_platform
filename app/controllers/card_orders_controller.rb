class CardOrdersController < ApplicationController
  before_action :authenticate_user! , only: [:show, :edit, :update, :destroy]
  before_action :set_card_order, only: [:show, :edit, :update, :destroy, :validated_card_order]
  

  # GET /order_cards
  # GET /order_cards.json
  def index
    @card_orders = CardOrder.all
    render layout: "dashboard"
  end

  # GET /order_cards/1
  # GET /order_cards/1.json
  def show
    render layout: "dashboard"
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

  def validated_card_order
    @card_order.update_column(:status, "Validated")
    redirect_to card_orders_url
   
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
        @identity_types = IdentityType.all
        @card_types = CardType.all
        @uba_account_types = UbaAccountType.all
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
      @card_order = CardOrder.find_by(uid: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def card_order_params
      params.require(:card_order).permit(:civility, :first_name, :last_name,:birth_date, :nationality, :identity_type_id, :identity_number,
        :profession, :country, :city, :address, :mobile_phone_number, :home_phone_number, :work_phone_number, :name_on_card, :uba_customer, :uba_account_type_id, :email, 
        :card_type_id, :uba_account_number, :quantity, :status, :notes, attachments: [])
    end
end
