class CreatePartnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :partnerships do |t|
      t.references :user_one, foreign_key: { to_table: :users }
      t.references :user_two, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
