class BookOfPermissionsController < Admin::ApplicationController
  before_action :set_book_of_permission, only: [:show, :edit, :update, :destroy]

  # GET /book_of_permissions
  # GET /book_of_permissions.json
  def index
    @book_of_permissions = BookOfPermission.all
  end

  # GET /book_of_permissions/1
  # GET /book_of_permissions/1.json
  def show
  end

  # GET /book_of_permissions/new
  def new
    @book_of_permission = BookOfPermission.new
  end

  # GET /book_of_permissions/1/edit
  def edit
  end

  # POST /book_of_permissions
  # POST /book_of_permissions.json
  def create
    @book_of_permission = BookOfPermission.new(book_of_permission_params)

    respond_to do |format|
      if @book_of_permission.save
        format.html { redirect_to @book_of_permission, notice: 'Book of permission was successfully created.' }
        format.json { render :show, status: :created, location: @book_of_permission }
      else
        format.html { render :new }
        format.json { render json: @book_of_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_of_permissions/1
  # PATCH/PUT /book_of_permissions/1.json
  def update
    respond_to do |format|
      if @book_of_permission.update(book_of_permission_params)
        format.html { redirect_to @book_of_permission, notice: 'Book of permission was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_of_permission }
      else
        format.html { render :edit }
        format.json { render json: @book_of_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_of_permissions/1
  # DELETE /book_of_permissions/1.json
  def destroy
    @book_of_permission.destroy
    respond_to do |format|
      format.html { redirect_to book_of_permissions_url, notice: 'Book of permission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_of_permission
      @book_of_permission = BookOfPermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_of_permission_params
      params.require(:book_of_permission).permit(:student_id)
    end
end
