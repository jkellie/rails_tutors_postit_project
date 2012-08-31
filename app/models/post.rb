class Post < ActiveRecord::Base
  attr_accessible :url, :user_id
  belongs_to :user
  
  validates :url,     presence: true
  validates :user_id, presence: true
end
