class DamsController < ApplicationController

  def index
    @dams = Dam.all
  end

  def new
    @dam = Dam.new
  end

  def create
    @dam = Dam.new(dam_params)
    if @dam.save
      redirect_to root_path
    else
      flash.alert = "Please Make Sure All Fields Are Complete."
      redirect_back fallback_location: root_path
    end
  end

  def edit
    @dam = Dam.find(params[:id])
  end

  def update
    @dam = Dam.find(params[:id])
    if @dam.update(dam_params)
      redirect_to root_path
    else
      flash.alert = "Please Make Sure All Fields Are Complete."
      redirect_back fallback_location: root_path
    end
  end

  def destroy
    @dam = Dam.find(params[:id])
    @dam.destroy
    redirect_back fallback_location: root_path
  end

  private

  def dam_params
    params.require(:dam).permit(:name, :description, :image)
  end

end
