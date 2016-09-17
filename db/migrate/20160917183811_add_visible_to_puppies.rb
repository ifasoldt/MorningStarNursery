class AddVisibleToPuppies < ActiveRecord::Migration[5.0]
  def change
    add_column :puppies, :visible, :boolean, default: true
  end
end
