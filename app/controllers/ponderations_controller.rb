class PonderationsController < Admin::ApplicationController
  before_action :set_ponderation, only: [:show, :edit, :update, :destroy]

  # GET /ponderations
  # GET /ponderations.json
  def index
    @ponderations = Ponderation.all
  end

  # GET /ponderations/1
  # GET /ponderations/1.json
  def show
  end

  # GET /ponderations/new
  def new
    @ponderation = Ponderation.new
  end

  # GET /ponderations/1/edit
  def edit
  end

  # POST /ponderations
  # POST /ponderations.json
  def create
    @ponderation = Ponderation.new(ponderation_params)

    respond_to do |format|
      if @ponderation.save
        format.html { redirect_to @ponderation, notice: 'Ponderation was successfully created.' }
        format.json { render :show, status: :created, location: @ponderation }
      else
        format.html { render :new }
        format.json { render json: @ponderation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ponderations/1
  # PATCH/PUT /ponderations/1.json
  def update
    respond_to do |format|
      if @ponderation.update(ponderation_params)
        format.html { redirect_to @ponderation, notice: 'Ponderation was successfully updated.' }
        format.json { render :show, status: :ok, location: @ponderation }
      else
        format.html { render :edit }
        format.json { render json: @ponderation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponderations/1
  # DELETE /ponderations/1.json
  def destroy
    @ponderation.destroy
    respond_to do |format|
      format.html { redirect_to ponderations_url, notice: 'Ponderation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ponderation
      @ponderation = Ponderation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ponderation_params
      params.require(:ponderation).permit(:value, :observation, :student_id, :pondered_activity_id)
    end
end
