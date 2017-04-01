class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    @work.bence_id = 1
    if @work.save
      flash[:notice] = "Work added"
      redirect_to root_path
    else
      flash.now[:notice] = "something went wrong, check whats going on"
      render :new
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(work_params)
      flash[:notice] = "Work updated"
      redirect_to root_path
    else
      flash.now[:notice] = "something went wrong, check whats going on"
      render :new
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to root_path
  end

  private
  def work_params
    params.require(:work).permit(:name, :description, :location, :start_date, :end_date)
  end
end
