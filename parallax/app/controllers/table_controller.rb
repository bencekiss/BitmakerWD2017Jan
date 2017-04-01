class TableController < ApplicationController
  def index
    @tables = Table.all
  end
  def new
    @table = Table.new
  end
  def create
    @table = Table.new(table_params)
    if @table.save
      redirect_to tables_url
    else
      render :new
    end
  end

  def show
    @table = Table.find(params[:id])
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    redirect_to tables_url
  end


  private
  def table_params
    params.require(:table).permit(:name)
  end
end
