class Baby < ApplicationRecord
  validates :name, presence: true
  validates :meaning, presence: true
  validates :gender, presence: true

  has_many :likes

  def self.find_by_couple(first_partner, second_partner)
    self.find_by_sql([%q/
        SELECT babies.* FROM babies
          INNER JOIN (
            SELECT babies_id FROM liked_names
            WHERE users_id = ?
              INTERSECT SELECT babies_id FROM liked_names
              WHERE users_id = ?
          ) as baby_ids
        ON babies.id = baby_ids.babies_id
      /, first_partner.id, second_partner.id
    ])
  end


end
