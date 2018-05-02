class PlannersController < Admin::ApplicationController
  before_action :set_planner, only: [:show, :edit, :update, :destroy]

  # GET /planners
  # GET /planners.json
  def index
    @planners = Planner.all
  end

  # GET /planners/1
  # GET /planners/1.json
  def show
    @planner_details = PlannerDetail.where(planner_id: params[:id])
  end

  # GET /planners/new
  def new
    @planner = Planner.new
  end

  # GET /planners/1/edit
  def edit
  end

  # POST /planners
  # POST /planners.json
  def create
    @planner = Planner.new(planner_params)

    respond_to do |format|
      if @planner.save
        format.html { redirect_to @planner, notice: 'Planner was successfully created.' }
        format.json { render :show, status: :created, location: @planner }
      else
        format.html { render :new }
        format.json { render json: @planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planners/1
  # PATCH/PUT /planners/1.json
  def update
    respond_to do |format|
      if @planner.update(planner_params)
        format.html { redirect_to @planner, notice: 'Planner was successfully updated.' }
        format.json { render :show, status: :ok, location: @planner }
      else
        format.html { render :edit }
        format.json { render json: @planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planners/1
  # DELETE /planners/1.json
  def destroy
    @planner.destroy
    respond_to do |format|
      format.html { redirect_to planners_url, notice: 'Planner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planner
      @planner = Planner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planner_params
      params.require(:planner).permit(:name, :student_id)
    end
end
