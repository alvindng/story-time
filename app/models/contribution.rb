class Contribution < ActiveRecord::Base
  belongs_to :story
  default_scope { order ("id ASC")}

  validates :sentence, :presence => true
  validates :sentence, length: { minimum: 1, maximum: 120 }
  validates :user, :presence => true


end
