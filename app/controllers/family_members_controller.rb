class FamilyMembersController < ApplicationController

  def new
    @family_member = FamilyMember.new
  end

  def create
    @family_member = FamilyMember.new(family_member_params)
    @family_member.save
    redirect_to root_path
  end

  def edit
    @family_member = FamilyMember.find(params[:id])
  end

  def update
    @family_member = FamilyMember.find(params[:id])
    @family_member.update(family_member_params)
    redirect_to root_path
  end

  def destroy
    @family_member = FamilyMember.find(params[:id])
    @family_member.destroy
    redirect_to root_path
  end

  private

  def family_member_params
    params.require(:family_member).permit(:name, :description, :image)
  end
end
