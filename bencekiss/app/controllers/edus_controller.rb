class EdusController < ApplicationController
  def index
    @edus = Edu.all
  end

  def new
    @edu = Edu.new
  end

  def create
    @edu = Edu.new(edu_params)
    @edu.bence_id = 1
    if @edu.save
      flash[:notice] = "Education added"
      redirect_to root_path
    else
      flash.now[:notice] = "something went wrong, check whats going on"
      render :new
    end
  end

  def edit
    @edu = Edu.find(params[:id])
  end

  def update
    @edu = Edu.find(params[:id])
    if @edu.update_attributes(edu_params)
      flash[:notice] = "Education updated"
      redirect_to root_path
    else
      flash.now[:notice] = "something went wrong, check whats going on"
      render :edit
    end
  end

  def destroy
    @edu = Edu.find(params[:id])
    @edu.destroy
    redirect_to root_path
  end

  private
  def edu_params
    params.require(:edu).permit(:name, :location, :school, :start_date, :end_date, :description)
  end
end
