class Member < ApplicationRecord
  validates :name,
            presence: true,
            length: { minimum: 1, maximum: 20 },
            uniqueness: true

  validate :check_height
  validate :check_weight

  private

  def check_height
    if height.nil?
      errors.add(:base, "Must be 1 height can't be blank")
    elsif height < 1
      errors.add(:base, "Height must be 1 or greater")
    end
  end

  def check_weight
    if weight.nil?
      errors.add(:base, "Must be 1 weight can't be blank")
    elsif weight < 1
      errors.add(:base, "Weight must be 1 or greater")
    end
  end
end