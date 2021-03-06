class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :posts
  has_many :comments
  
  validates :name, presence: true
  validates :email, presence: true  
end
