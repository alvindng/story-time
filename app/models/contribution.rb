class Contribution < ActiveRecord::Base
  belongs_to :story
  default_scope { order ("id ASC")}

  validates :sentence, :presence => true
  validates :user, :presence => true
end
