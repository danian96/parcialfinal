class PlannerDetailsController < Admin::ApplicationController
  before_action :set_planner_detail, only: [:show, :edit, :update, :destroy]

  # GET /planner_details
  # GET /planner_details.json
  def index
    @planner_details = PlannerDetail.all
  end

  # GET /planner_details/1
  # GET /planner_details/1.json
  def show
  end

  # GET /planner_details/new
  def new
    @planner_detail = PlannerDetail.new
  end

  # GET /planner_details/1/edit
  def edit
  end

  # POST /planner_details
  # POST /planner_details.json
  def create
    @planner_detail = PlannerDetail.new(planner_detail_params)

    respond_to do |format|
      if @planner_detail.save
        format.html { redirect_to @planner_detail, notice: 'Planner detail was successfully created.' }
        format.json { render :show, status: :created, location: @planner_detail }
      else
        format.html { render :new }
        format.json { render json: @planner_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planner_details/1
  # PATCH/PUT /planner_details/1.json
  def update
    respond_to do |format|
      if @planner_detail.update(planner_detail_params)
        format.html { redirect_to @planner_detail, notice: 'Planner detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @planner_detail }
      else
        format.html { render :edit }
        format.json { render json: @planner_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planner_details/1
  # DELETE /planner_details/1.json
  def destroy
    @planner_detail.destroy
    respond_to do |format|
      format.html { redirect_to planner_details_url, notice: 'Planner detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planner_detail
      @planner_detail = PlannerDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planner_detail_params
      params.require(:planner_detail).permit(:name, :init_date, :description, :response, :status, :planner_id)
    end
end
