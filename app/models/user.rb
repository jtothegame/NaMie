class User < ApplicationRecord
  has_secure_password

  has_many :liked_names
  belongs_to :partnership

  validates(:first_name, { presence: true })
  validates(:last_name, { presence: true })
  validates(:email, { presence: true, uniqueness: true })

  def partner
    return nil if partnership.blank?
    if partnership.user_one_id == self.id
      partnership.user_two
    else
      partnership.user_one
    end
  end

  def self.search(search_term)
    where(['first_name ILIKE ? OR last_name ILIKE ? OR email ILIKE ?', "%#{search_term}%", "%#{search_term}%", "%#{search_term}%"])
  end

  def self.created_after(date)
    where(['created_at > ?', "#{date}"])
  end

  def self.is_not(name)
    where('first_name != ? AND last_name != ?', "#{name}", "#{name}")
  end

  def full_name
    "#{first_name} #{last_name}".titleize
  end

end
