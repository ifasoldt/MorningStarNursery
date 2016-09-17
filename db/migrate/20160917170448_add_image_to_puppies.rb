class AddImageToPuppies < ActiveRecord::Migration[5.0]
  def change
    add_column :puppies, :image_id, :string
  end
end
