class UbaAccountTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_uba_account_type, only: [:show, :edit, :update, :destroy]
	layout "dashboard"

  # GET /uba_account_types
  # GET /uba_account_types.json
  def index
    @uba_account_types = UbaAccountType.all
  end

  # GET /uba_account_types/1
  # GET /uba_account_types/1.json
  def show
  end

  # GET /uba_account_types/new
  def new
    @uba_account_type = UbaAccountType.new
  end

  # GET /uba_account_types/1/edit
  def edit
  end

  # POST /uba_account_types
  # POST /uba_account_types.json
  def create
    @uba_account_type = current_user.uba_account_types.build(uba_account_type_params)

    respond_to do |format|
      if @uba_account_type.save
        @uba_account_types = UbaAccountType.all
        format.html { redirect_to @uba_account_type, notice: 'Uba account type was successfully created.' }
        format.json { render :show, status: :created, location: @uba_account_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @uba_account_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /uba_account_types/1
  # PATCH/PUT /uba_account_types/1.json
  def update
    respond_to do |format|
      if @uba_account_type.update(uba_account_type_params)
        @uba_account_types = UbaAccountType.all
        format.html { redirect_to @uba_account_type, notice: 'Uba account type was successfully updated.' }
        format.json { render :show, status: :ok, location: @uba_account_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @uba_account_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /uba_account_types/1
  # DELETE /uba_account_types/1.json
  def destroy
    @uba_account_type.destroy
    respond_to do |format|
      @uba_account_types = UbaAccountType.all
      format.html { redirect_to uba_account_types_url, notice: 'Uba account type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uba_account_type
      @uba_account_type = UbaAccountType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uba_account_type_params
      params.require(:uba_account_type).permit( :name, :description)
    end
end
