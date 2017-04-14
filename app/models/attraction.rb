class Attraction < ActiveRecord::Base
  # write associations here
  # has_to
  # belongs_to
  has_many :rides
  has_many :users, through: :rides
end
