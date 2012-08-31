class Post < ActiveRecord::Base
  attr_accessible :url, :user_id
  
  validates :url,     presence: true
  validates :user_id, presence: true
end
