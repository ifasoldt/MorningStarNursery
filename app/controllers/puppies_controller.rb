class PuppiesController < ApplicationController

  def index
    @puppies = Puppy.where(visible: true)
    @contact = Contact.new
    @family_members = FamilyMember.all
  end

  def new
    @puppy = Puppy.new
  end

  def edit
    @puppy = Puppy.find(params[:id])
  end

  def update
    @puppy = Puppy.find(params[:id])
    if @puppy.update(puppy_params)
      redirect_to root_path
    else
      flash.alert = "Please Make Sure All Fields Are Complete."
      redirect_back fallback_location: root_path
    end
  end

  def create
    @puppy = Puppy.new(puppy_params)
    if @puppy.save
      redirect_to root_path
    else
      flash.alert = "Please Make Sure All Fields Are Complete."
      redirect_back fallback_location: root_path
    end
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :description, :color, :dob, :description, :image, :status, :visible)
  end

end
