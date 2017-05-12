class CreateBabies < ActiveRecord::Migration[5.0]
  def change
    create_table :babies do |t|
      t.string :name
      t.text :meaning
      t.text :related
      t.integer :popularity

      t.timestamps
    end
  end
end
