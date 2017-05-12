class AddPronouncedToBaby < ActiveRecord::Migration[5.0]
  def change
    add_column :babies, :pronounced, :string
  end
end
