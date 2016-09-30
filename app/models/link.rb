class Link < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  # Link's association has many comments    
  has_many :comments
end
