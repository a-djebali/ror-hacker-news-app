class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # User's association has many links & comments  
  has_many :links
  has_many :comments

  # ensure that user name will be present, unique, and well sized
  validates :name, presence: true, uniqueness: {case_sensitive: false}, length: {minimum:3, maximum:25}
end
