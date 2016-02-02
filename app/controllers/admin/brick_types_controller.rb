class Admin::BrickTypesController < Admin::AdminController
  before_action :get_brick_type, only: [:show, :edit, :update, :destroy]

  def new
    @brick_type = BrickType.new
  end

  def index
    @brick_types = BrickType.all
  end

  def show
  end

  def edit
  end

  def create
    @brick_type = BrickType.new(brick_type_params)
    if @brick_type.save
      redirect_to admin_brick_types_path
    else
      render :new
    end
  end

  def update
    if @brick_type.update_attributes(brick_type_params)
      redirect_to admin_brick_types_path
    else
      render :edit
    end
  end

  def destroy
    @brick_type.destroy
    redirect_to admin_brick_types_path
  end

  private

  def get_brick_type
    @brick_type = BrickType.find(params[:id])
  end

  def brick_type_params
    params.require(:brick_type).permit(:name)
  end
end