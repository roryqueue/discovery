class Spacescape < ActiveRecord::Base
  validates :title, presence: true
  validates :picture, presence: true
end
