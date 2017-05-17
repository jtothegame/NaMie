class AddGenderToBaby < ActiveRecord::Migration[5.0]
  def change
    add_column :babies, :gender, :string
  end
end
