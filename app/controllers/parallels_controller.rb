class ParallelsController < Admin::ApplicationController
  before_action :set_parallel, only: [:show, :edit, :update, :destroy]

  # GET /parallels
  # GET /parallels.json
  def index
    @parallels = Parallel.all
  end

  # GET /parallels/1
  # GET /parallels/1.json
  def show
    @students = Inscription.joins(:student).where(parallel_id: params[:id])
  end

  # GET /parallels/new
  def new
    @parallel = Parallel.new
  end

  # GET /parallels/1/edit
  def edit
  end

  # POST /parallels
  # POST /parallels.json
  def create
    @parallel = Parallel.new(parallel_params)

    respond_to do |format|
      if @parallel.save
        format.html { redirect_to @parallel, notice: 'Parallel was successfully created.' }
        format.json { render :show, status: :created, location: @parallel }
      else
        format.html { render :new }
        format.json { render json: @parallel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parallels/1
  # PATCH/PUT /parallels/1.json
  def update
    respond_to do |format|
      if @parallel.update(parallel_params)
        format.html { redirect_to @parallel, notice: 'Parallel was successfully updated.' }
        format.json { render :show, status: :ok, location: @parallel }
      else
        format.html { render :edit }
        format.json { render json: @parallel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parallels/1
  # DELETE /parallels/1.json
  def destroy
    @parallel.destroy
    respond_to do |format|
      format.html { redirect_to parallels_url, notice: 'Parallel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parallel
      @parallel = Parallel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parallel_params
      params.require(:parallel).permit(:name, :grade_id, :user_id)
    end
end
