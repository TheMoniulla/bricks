class Admin::ProjectsController < Admin::AdminController
  before_action :get_project, only: [:show, :edit, :update, :destroy]

  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to admin_projects_path
    else
      render :new
    end
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to admin_projects_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to admin_projects_path
  end

  private

  def get_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :brick_id)
  end
end