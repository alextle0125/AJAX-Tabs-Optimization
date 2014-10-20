class Unit < ActiveRecord::Base
  belongs_to :phase
  has_many :challenges
end
