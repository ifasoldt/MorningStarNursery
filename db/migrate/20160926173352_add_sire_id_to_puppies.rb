class AddSireIdToPuppies < ActiveRecord::Migration[5.0]
  def change
    add_column :puppies, :sire_id, :integer
    add_column :puppies, :dam_id, :integer
  end
end
