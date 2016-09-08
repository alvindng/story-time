class Image < ActiveRecord::Base
  belongs_to :story, index: true
  validates :name, :presence => true
end
