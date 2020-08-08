class MachineInSectionsController < ApplicationController
  before_action :set_machine_in_section, only: [:show, :edit, :update, :destroy]

  # GET /machine_in_sections
  # GET /machine_in_sections.json
  def index
    @machine_in_sections = MachineInSection.all
  end

  # GET /machine_in_sections/1
  # GET /machine_in_sections/1.json
  def show
  end

  # GET /machine_in_sections/new
  def new
    @machine_in_section = MachineInSection.new
  end

  # GET /machine_in_sections/1/edit
  def edit
  end

  # POST /machine_in_sections
  # POST /machine_in_sections.json
  def create
    @machine_in_section = MachineInSection.new(machine_in_section_params)

    respond_to do |format|
      if @machine_in_section.save
        format.html { redirect_to @machine_in_section, notice: 'Machine in section was successfully created.' }
        format.json { render :show, status: :created, location: @machine_in_section }
      else
        format.html { render :new }
        format.json { render json: @machine_in_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machine_in_sections/1
  # PATCH/PUT /machine_in_sections/1.json
  def update
    respond_to do |format|
      if @machine_in_section.update(machine_in_section_params)
        format.html { redirect_to @machine_in_section, notice: 'Machine in section was successfully updated.' }
        format.json { render :show, status: :ok, location: @machine_in_section }
      else
        format.html { render :edit }
        format.json { render json: @machine_in_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_in_sections/1
  # DELETE /machine_in_sections/1.json
  def destroy
    @machine_in_section.destroy
    respond_to do |format|
      format.html { redirect_to machine_in_sections_url, notice: 'Machine in section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine_in_section
      @machine_in_section = MachineInSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def machine_in_section_params
      params.require(:machine_in_section).permit(:machine_id, :section_id)
    end
end
