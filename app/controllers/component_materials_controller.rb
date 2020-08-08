class ComponentMaterialsController < ApplicationController
  before_action :set_component_material, only: [:show, :edit, :update, :destroy]

  # GET /component_materials
  # GET /component_materials.json
  def index
    @component_materials = ComponentMaterial.all
  end

  # GET /component_materials/1
  # GET /component_materials/1.json
  def show
  end

  # GET /component_materials/new
  def new
    @component_material = ComponentMaterial.new
  end

  # GET /component_materials/1/edit
  def edit
  end

  # POST /component_materials
  # POST /component_materials.json
  def create
    @component_material = ComponentMaterial.new(component_material_params)

    respond_to do |format|
      if @component_material.save
        format.html { redirect_to @component_material, notice: 'Component material was successfully created.' }
        format.json { render :show, status: :created, location: @component_material }
      else
        format.html { render :new }
        format.json { render json: @component_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_materials/1
  # PATCH/PUT /component_materials/1.json
  def update
    respond_to do |format|
      if @component_material.update(component_material_params)
        format.html { redirect_to @component_material, notice: 'Component material was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_material }
      else
        format.html { render :edit }
        format.json { render json: @component_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_materials/1
  # DELETE /component_materials/1.json
  def destroy
    @component_material.destroy
    respond_to do |format|
      format.html { redirect_to component_materials_url, notice: 'Component material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_material
      @component_material = ComponentMaterial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def component_material_params
      params.require(:component_material).permit(:component_id, :material_id, :quantity, :measure_unit)
    end
end
