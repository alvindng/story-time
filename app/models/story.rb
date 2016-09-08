class Story < ActiveRecord::Base
  has_many :contributions
  default_scope { order ("name ASC")}
  validates :name, :presence => true
end
