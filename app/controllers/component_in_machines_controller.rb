class ComponentInMachinesController < ApplicationController
  before_action :set_component_in_machine, only: [:show, :edit, :update, :destroy]

  # GET /component_in_machines
  # GET /component_in_machines.json
  def index
    @component_in_machines = ComponentInMachine.all
  end

  # GET /component_in_machines/1
  # GET /component_in_machines/1.json
  def show
  end

  # GET /component_in_machines/new
  def new
    @component_in_machine = ComponentInMachine.new
  end

  # GET /component_in_machines/1/edit
  def edit
  end

  # POST /component_in_machines
  # POST /component_in_machines.json
  def create
    @component_in_machine = ComponentInMachine.new(component_in_machine_params)

    respond_to do |format|
      if @component_in_machine.save
        format.html { redirect_to @component_in_machine, notice: 'Component in machine was successfully created.' }
        format.json { render :show, status: :created, location: @component_in_machine }
      else
        format.html { render :new }
        format.json { render json: @component_in_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_in_machines/1
  # PATCH/PUT /component_in_machines/1.json
  def update
    respond_to do |format|
      if @component_in_machine.update(component_in_machine_params)
        format.html { redirect_to @component_in_machine, notice: 'Component in machine was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_in_machine }
      else
        format.html { render :edit }
        format.json { render json: @component_in_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_in_machines/1
  # DELETE /component_in_machines/1.json
  def destroy
    @component_in_machine.destroy
    respond_to do |format|
      format.html { redirect_to component_in_machines_url, notice: 'Component in machine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_in_machine
      @component_in_machine = ComponentInMachine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def component_in_machine_params
      params.require(:component_in_machine).permit(:component_id, :machine_id, :quantity)
    end
end
