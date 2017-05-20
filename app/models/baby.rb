class Baby < ApplicationRecord
  validates :name, presence: true
  validates :meaning, presence: true
  validates :gender, presence: true

  has_many :likes

  def self.find_by_couple(first_partner, second_partner)
    self.find_by_sql([%q/
        SELECT babies.* FROM babies
          INNER JOIN (
            SELECT baby_id FROM liked_names
            WHERE user_id = ?
              INTERSECT SELECT baby_id FROM liked_names
              WHERE user_id = ?
          ) as baby_ids
        ON babies.id = baby_ids.baby_id
      /, first_partner.id, second_partner.id
    ])
  end


end
