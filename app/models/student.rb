class Student < ApplicationRecord
  validates :first_name, :last_name, :original_house, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
