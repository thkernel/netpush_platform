class IdentityTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_identity_type, only: [:show, :edit, :update, :destroy]
	layout "dashboard"

  # GET /identity_types
  # GET /identity_types.json
  def index
    @identity_types = IdentityType.all
  end

  # GET /identity_types/1
  # GET /identity_types/1.json
  def show
  end

  # GET /identity_types/new
  def new
    @identity_type = IdentityType.new
  end

  # GET /identity_types/1/edit
  def edit
  end

  # POST /identity_types
  # POST /identity_types.json
  def create
    @identity_type = current_user.identity_types.build(identity_type_params)

    respond_to do |format|
      if @identity_type.save
        @identity_types = IdentityType.all

        format.html { redirect_to @identity_type, notice: 'Identity type was successfully created.' }
        format.json { render :show, status: :created, location: @identity_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @identity_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /identity_types/1
  # PATCH/PUT /identity_types/1.json
  def update
    respond_to do |format|
      if @identity_type.update(identity_type_params)
        @identity_types = IdentityType.all

        format.html { redirect_to @identity_type, notice: 'Identity type was successfully updated.' }
        format.json { render :show, status: :ok, location: @identity_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @identity_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /identity_types/1
  # DELETE /identity_types/1.json
  def destroy
    @identity_type.destroy
    respond_to do |format|
      @identity_types = IdentityType.all

      format.html { redirect_to identity_types_url, notice: 'Identity type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identity_type
      @identity_type = IdentityType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def identity_type_params
      params.require(:identity_type).permit(:name, :description)
    end
end
