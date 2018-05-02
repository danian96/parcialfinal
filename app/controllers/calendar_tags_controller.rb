class CalendarTagsController < Admin::ApplicationController
  before_action :set_calendar_tag, only: [:show, :edit, :update, :destroy]

  # GET /calendar_tags
  # GET /calendar_tags.json
  def index
    @calendar_tags = CalendarTag.all
  end

  # GET /calendar_tags/1
  # GET /calendar_tags/1.json
  def show
  end

  # GET /calendar_tags/new
  def new
    @calendar_tag = CalendarTag.new
  end

  # GET /calendar_tags/1/edit
  def edit
  end

  # POST /calendar_tags
  # POST /calendar_tags.json
  def create
    @calendar_tag = CalendarTag.new(calendar_tag_params)

    respond_to do |format|
      if @calendar_tag.save
        format.html { redirect_to @calendar_tag, notice: 'Calendar tag was successfully created.' }
        format.json { render :show, status: :created, location: @calendar_tag }
      else
        format.html { render :new }
        format.json { render json: @calendar_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_tags/1
  # PATCH/PUT /calendar_tags/1.json
  def update
    respond_to do |format|
      if @calendar_tag.update(calendar_tag_params)
        format.html { redirect_to @calendar_tag, notice: 'Calendar tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendar_tag }
      else
        format.html { render :edit }
        format.json { render json: @calendar_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_tags/1
  # DELETE /calendar_tags/1.json
  def destroy
    @calendar_tag.destroy
    respond_to do |format|
      format.html { redirect_to calendar_tags_url, notice: 'Calendar tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_tag
      @calendar_tag = CalendarTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_tag_params
      params.require(:calendar_tag).permit(:name)
    end
end
