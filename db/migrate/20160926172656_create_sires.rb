class CreateSires < ActiveRecord::Migration[5.0]
  def change
    create_table :sires do |t|
      t.string :name
      t.string :image_id
      t.text :description

      t.timestamps
    end
  end
end
