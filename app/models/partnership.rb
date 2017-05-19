class Partnership < ApplicationRecord
  belongs_to :user_one, class_name: "User"
  belongs_to :user_two, class_name: "User"
  has_many :users, dependent: :nullify

  delegate :email, to: :user_one, allow_nil: true, prefix: true
  delegate :email, to: :user_two, allow_nil: true, prefix: true

  # validates :email, uniqueness: true

end
