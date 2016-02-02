class BricksProjectsController < ApplicationController
  before_action :get_project

  def new
    @bricks_project = @project.bricks_projects.new
  end

  def create
    @bricks_project = @project.bricks_projects.new(bricks_project_params)
    if @bricks_project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @bricks_project = @project.bricks_projects.find(params[:id])
    @bricks_project.destroy
    redirect_to project_path(@project)
  end

  private

  def get_project
    @project = Project.find(params[:project_id])
  end

  def bricks_project_params
    params.require(:bricks_project).permit(:brick_id, :quantity)
  end
end