class Admin::BrickColorsController < Admin::AdminController
  before_action :get_brick_color, only: [:show, :edit, :update, :destroy]

  def new
    @brick_color = BrickColor.new
  end

  def index
    @brick_colors = BrickColor.all
  end

  def show
  end

  def edit
  end

  def create
    @brick_color = BrickColor.new(brick_color_params)
    if @brick_color.save
      redirect_to admin_brick_colors_path
    else
      render :new
    end
  end

  def update
    if @brick_color.update_attributes(brick_color_params)
      redirect_to admin_brick_colors_path
    else
      render :edit
    end
  end

  def destroy
    @brick_color.destroy
    redirect_to admin_brick_colors_path
  end

  private

  def get_brick_color
    @brick_color = BrickColor.find(params[:id])
  end

  def brick_color_params
    params.require(:brick_color).permit(:name)
  end
end