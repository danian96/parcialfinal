class CalendarDetailsController < Admin::ApplicationController
  before_action :set_calendar_detail, only: [:show, :edit, :update, :destroy]

  # GET /calendar_details
  # GET /calendar_details.json
  def index
    @calendar_details = CalendarDetail.all
  end

  # GET /calendar_details/1
  # GET /calendar_details/1.json
  def show
  end

  # GET /calendar_details/new
  def new
    @calendar_detail = CalendarDetail.new
  end

  # GET /calendar_details/1/edit
  def edit
  end

  # POST /calendar_details
  # POST /calendar_details.json
  def create
    @calendar_detail = CalendarDetail.new(calendar_detail_params)

    respond_to do |format|
      if @calendar_detail.save
        format.html { redirect_to @calendar_detail, notice: 'Calendar detail was successfully created.' }
        format.json { render :show, status: :created, location: @calendar_detail }
      else
        format.html { render :new }
        format.json { render json: @calendar_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_details/1
  # PATCH/PUT /calendar_details/1.json
  def update
    respond_to do |format|
      if @calendar_detail.update(calendar_detail_params)
        format.html { redirect_to @calendar_detail, notice: 'Calendar detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendar_detail }
      else
        format.html { render :edit }
        format.json { render json: @calendar_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_details/1
  # DELETE /calendar_details/1.json
  def destroy
    @calendar_detail.destroy
    respond_to do |format|
      format.html { redirect_to calendar_details_url, notice: 'Calendar detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_detail
      @calendar_detail = CalendarDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_detail_params
      params.require(:calendar_detail).permit(:name, :init_date, :description, :calendar_id, :calendar_tag_id)
    end
end
