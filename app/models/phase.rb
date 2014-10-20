class Phase < ActiveRecord::Base
  has_many :units
  has_many :challenges, through: :units
end
