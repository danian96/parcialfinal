class PonderedActivitiesController < Admin::ApplicationController
  before_action :set_pondered_activity, only: [:show, :edit, :update, :destroy]

  # GET /pondered_activities
  # GET /pondered_activities.json
  def index
    @pondered_activities = PonderedActivity.all
  end

  # GET /pondered_activities/1
  # GET /pondered_activities/1.json
  def show
  end

  # GET /pondered_activities/new
  def new
    @pondered_activity = PonderedActivity.new
  end

  # GET /pondered_activities/1/edit
  def edit
  end

  # POST /pondered_activities
  # POST /pondered_activities.json
  def create
    @pondered_activity = PonderedActivity.new(pondered_activity_params)

    respond_to do |format|
      if @pondered_activity.save
        format.html { redirect_to @pondered_activity, notice: 'Pondered activity was successfully created.' }
        format.json { render :show, status: :created, location: @pondered_activity }
      else
        format.html { render :new }
        format.json { render json: @pondered_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pondered_activities/1
  # PATCH/PUT /pondered_activities/1.json
  def update
    respond_to do |format|
      if @pondered_activity.update(pondered_activity_params)
        format.html { redirect_to @pondered_activity, notice: 'Pondered activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @pondered_activity }
      else
        format.html { render :edit }
        format.json { render json: @pondered_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pondered_activities/1
  # DELETE /pondered_activities/1.json
  def destroy
    @pondered_activity.destroy
    respond_to do |format|
      format.html { redirect_to pondered_activities_url, notice: 'Pondered activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pondered_activity
      @pondered_activity = PonderedActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pondered_activity_params
      params.require(:pondered_activity).permit(:name, :description, :init_date, :pondered_planner_id, :subject_id)
    end
end
