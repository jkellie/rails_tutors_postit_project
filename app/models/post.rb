class Post < ActiveRecord::Base
  attr_accessible :url, :user_id, :title, :vote_score
  belongs_to :user
  has_many :comments
  
  validates :url,     presence: true
  validates :user_id, presence: true
  validates :title,   presence: true
  
  default_scope order: 'posts.created_at DESC'
end
