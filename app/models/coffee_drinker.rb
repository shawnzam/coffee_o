class CoffeeDrinker < ActiveRecord::Base
  has_many :checkins
  validates_formatting_of :phone_number, using: :us_phone
end
