class AddPartnershipToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :partnership, foreign_key: true
  end
end
