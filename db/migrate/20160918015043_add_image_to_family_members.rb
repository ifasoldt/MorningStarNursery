class AddImageToFamilyMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :family_members, :image_id, :string
  end
end
