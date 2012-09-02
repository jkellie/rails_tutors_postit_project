class Post < ActiveRecord::Base
  attr_accessible :url, :user_id
  belongs_to :user
  has_many :posts
  
  validates :url,     presence: true
  validates :user_id, presence: true
  
  default_scope order: 'posts.created_at DESC'
end
