class ListOfChildrenController < Admin::ApplicationController
  before_action :set_list_of_child, only: [:show, :edit, :update, :destroy]

  # GET /list_of_children
  # GET /list_of_children.json
  def index
    @list_of_children = ListOfChild.all
  end

  # GET /list_of_children/1
  # GET /list_of_children/1.json
  def show
  end

  # GET /list_of_children/new
  def new
    @list_of_child = ListOfChild.new
  end

  # GET /list_of_children/1/edit
  def edit
  end

  # POST /list_of_children
  # POST /list_of_children.json
  def create
    @list_of_child = ListOfChild.new(list_of_child_params)

    respond_to do |format|
      if @list_of_child.save
        format.html { redirect_to @list_of_child, notice: 'List of child was successfully created.' }
        format.json { render :show, status: :created, location: @list_of_child }
      else
        format.html { render :new }
        format.json { render json: @list_of_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_of_children/1
  # PATCH/PUT /list_of_children/1.json
  def update
    respond_to do |format|
      if @list_of_child.update(list_of_child_params)
        format.html { redirect_to @list_of_child, notice: 'List of child was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_of_child }
      else
        format.html { render :edit }
        format.json { render json: @list_of_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_of_children/1
  # DELETE /list_of_children/1.json
  def destroy
    @list_of_child.destroy
    respond_to do |format|
      format.html { redirect_to list_of_children_url, notice: 'List of child was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_of_child
      @list_of_child = ListOfChild.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_of_child_params
      params.require(:list_of_child).permit(:user_id, :student_id)
    end
end
