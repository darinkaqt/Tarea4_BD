class BuyOptionsController < ApplicationController
  before_action :set_buy_option, only: [:show, :edit, :update, :destroy]

  # GET /buy_options
  # GET /buy_options.json
  def index
    @buy_options = BuyOption.all
  end

  # GET /buy_options/1
  # GET /buy_options/1.json
  def show
  end

  # GET /buy_options/new
  def new
    @buy_option = BuyOption.new
  end

  # GET /buy_options/1/edit
  def edit
  end

  # POST /buy_options
  # POST /buy_options.json
  def create
    @buy_option = BuyOption.new(buy_option_params)

    respond_to do |format|
      if @buy_option.save
        format.html { redirect_to @buy_option, notice: 'Buy option was successfully created.' }
        format.json { render :show, status: :created, location: @buy_option }
      else
        format.html { render :new }
        format.json { render json: @buy_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buy_options/1
  # PATCH/PUT /buy_options/1.json
  def update
    respond_to do |format|
      if @buy_option.update(buy_option_params)
        format.html { redirect_to @buy_option, notice: 'Buy option was successfully updated.' }
        format.json { render :show, status: :ok, location: @buy_option }
      else
        format.html { render :edit }
        format.json { render json: @buy_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buy_options/1
  # DELETE /buy_options/1.json
  def destroy
    @buy_option.destroy
    respond_to do |format|
      format.html { redirect_to buy_options_url, notice: 'Buy option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_option
      @buy_option = BuyOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buy_option_params
      params.require(:buy_option).permit(:material_id, :company_name, :price, :date)
    end
end
