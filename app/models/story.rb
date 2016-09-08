class Story < ActiveRecord::Base
  has_many :contributions
  has_one :image
  validates :name, :presence => true
end
