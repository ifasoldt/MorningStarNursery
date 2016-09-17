class CreatePuppies < ActiveRecord::Migration[5.0]
  def change
    create_table :puppies do |t|
      t.string :name
      t.date :dob
      t.string :color
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
