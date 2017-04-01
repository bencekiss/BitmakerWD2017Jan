class BencesController < ApplicationController
  def edit
    @bence = Bence.first
  end

  def update
    @bence = Bence.first
    if @bence.update_attributes(bence_params)
      flash[:notice] = "Updated info"
      redirect_to root_path
    else
      flash.now[:notice] = "something went wrong, check whats going on"
      render :new
    end
  end

  def show
  
    @bence = Bence.first

  end

  private
  def bence_params
    params.require(:bence).permit(:description, :email, :name, :phone)
  end
end
