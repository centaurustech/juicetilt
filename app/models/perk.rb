class Perk < ActiveRecord::Base
  belongs_to :campaign
  has_many :orders
end