class SiresController < ApplicationController

  def index
    @sires = Sire.all
  end

  def new
    @sire = Sire.new
  end

  def create
    @sire = Sire.new(sire_params)
    if @sire.save
      redirect_to root_path
    else
      flash.alert = "Please Make Sure All Fields Are Complete."
      redirect_back fallback_location: root_path
    end
  end

  def edit
    @sire = Sire.find(params[:id])
  end

  def update
    @sire = Sire.find(params[:id])
    if @sire.update(sire_params)
      redirect_to root_path
    else
      flash.alert = "Please Make Sure All Fields Are Complete."
      redirect_back fallback_location: root_path
    end
  end

  def destroy
    @sire = Sire.find(params[:id])
    @sire.destroy
    redirect_back fallback_location: root_path
  end

  private

  def sire_params
    params.require(:sire).permit(:name, :description, :image)
  end

end
