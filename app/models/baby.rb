class Baby < ApplicationRecord
  validates :name, presence: true
  validates :meaning, presence: true
  validates :gender, presence: true


end
