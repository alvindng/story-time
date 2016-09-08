class Story < ActiveRecord::Base
  has_many :contributions
  validates :name, :presence => true
end
