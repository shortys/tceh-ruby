class CheckboxedModelsController < ApplicationController
  before_action :set_checkboxed_model, only: [:show, :edit, :update, :destroy]

  # GET /checkboxed_models
  # GET /checkboxed_models.json
  def index
    @checkboxed_models = CheckboxedModel.all
  end

  # GET /checkboxed_models/1
  # GET /checkboxed_models/1.json
  def show
  end

  # GET /checkboxed_models/new
  def new
    @checkboxed_model = CheckboxedModel.new
  end

  # GET /checkboxed_models/1/edit
  def edit
  end

  # POST /checkboxed_models
  # POST /checkboxed_models.json
  def create
    @checkboxed_model = CheckboxedModel.new(checkboxed_model_params)

    respond_to do |format|
      if @checkboxed_model.save
        format.html { redirect_to @checkboxed_model, notice: 'Checkboxed model was successfully created.' }
        format.json { render :show, status: :created, location: @checkboxed_model }
      else
        format.html { render :new }
        format.json { render json: @checkboxed_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkboxed_models/1
  # PATCH/PUT /checkboxed_models/1.json
  def update
    respond_to do |format|
      if @checkboxed_model.update(checkboxed_model_params)
        format.html { redirect_to @checkboxed_model, notice: 'Checkboxed model was successfully updated.' }
        format.json { render :show, status: :ok, location: @checkboxed_model }
      else
        format.html { render :edit }
        format.json { render json: @checkboxed_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkboxed_models/1
  # DELETE /checkboxed_models/1.json
  def destroy
    @checkboxed_model.destroy
    respond_to do |format|
      format.html { redirect_to checkboxed_models_url, notice: 'Checkboxed model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkboxed_model
      @checkboxed_model = CheckboxedModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkboxed_model_params
      params.require(:checkboxed_model).permit(:music => [])
    end
end
