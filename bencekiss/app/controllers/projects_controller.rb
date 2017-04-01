class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.bence_id = 1
    if @project.save
      flash[:notice] = "Project added"
      redirect_to root_path
    else
      flash.now[:notice] = "something went wrong, check whats going on"
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      flash[:notice] = "Project added"
      redirect_to root_path
    else
      flash.now[:notice] = "something went wrong, check whats going on"
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :url, :bence_id)
  end
end
