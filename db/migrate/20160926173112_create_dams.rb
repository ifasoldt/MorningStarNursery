class CreateDams < ActiveRecord::Migration[5.0]
  def change
    create_table :dams do |t|
      t.string :name
      t.string :image_id
      t.text :description

      t.timestamps
    end
  end
end
