class CreateLikedNames < ActiveRecord::Migration[5.0]
  def change
    create_table :liked_names do |t|
      t.references :users, foreign_key: true
      t.references :babies, foreign_key: true

      t.timestamps
    end
  end
end
