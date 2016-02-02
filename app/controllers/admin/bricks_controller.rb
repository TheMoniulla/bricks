class Admin::BricksController < Admin::AdminController
  before_action :get_brick, only: [:show, :edit, :update, :destroy]

  def index
    @bricks = Brick.all
  end

  def new
    @brick = Brick.new
  end

  def show
  end

  def edit
  end

  def create
    @brick = Brick.new(brick_params)
    if @brick.save
      redirect_to admin_bricks_path
    else
      render :new
    end
  end

  def update
    if @brick.update_attributes(brick_params)
      redirect_to admin_bricks_path
    else
      render :edit
    end
  end

  def destroy
    @brick.destroy
    redirect_to admin_bricks_path
  end

  private

  def get_brick
    @brick = Brick.find(params[:id])
  end

  def brick_params
    params.require(:brick).permit(:brick_type_id, :brick_color_id)
  end
end
