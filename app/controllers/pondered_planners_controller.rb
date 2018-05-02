class PonderedPlannersController < Admin::ApplicationController
  before_action :set_pondered_planner, only: [:show, :edit, :update, :destroy]

  # GET /pondered_planners
  # GET /pondered_planners.json
  def index
    @pondered_planners = PonderedPlanner.all
  end

  # GET /pondered_planners/1
  # GET /pondered_planners/1.json
  def show
  end

  # GET /pondered_planners/new
  def new
    @pondered_planner = PonderedPlanner.new
  end

  # GET /pondered_planners/1/edit
  def edit
  end

  # POST /pondered_planners
  # POST /pondered_planners.json
  def create
    @pondered_planner = PonderedPlanner.new(pondered_planner_params)

    respond_to do |format|
      if @pondered_planner.save
        format.html { redirect_to @pondered_planner, notice: 'Pondered planner was successfully created.' }
        format.json { render :show, status: :created, location: @pondered_planner }
      else
        format.html { render :new }
        format.json { render json: @pondered_planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pondered_planners/1
  # PATCH/PUT /pondered_planners/1.json
  def update
    respond_to do |format|
      if @pondered_planner.update(pondered_planner_params)
        format.html { redirect_to @pondered_planner, notice: 'Pondered planner was successfully updated.' }
        format.json { render :show, status: :ok, location: @pondered_planner }
      else
        format.html { render :edit }
        format.json { render json: @pondered_planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pondered_planners/1
  # DELETE /pondered_planners/1.json
  def destroy
    @pondered_planner.destroy
    respond_to do |format|
      format.html { redirect_to pondered_planners_url, notice: 'Pondered planner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pondered_planner
      @pondered_planner = PonderedPlanner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pondered_planner_params
      params.require(:pondered_planner).permit(:name, :parallel_id)
    end
end
