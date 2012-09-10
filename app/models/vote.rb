class Vote < ActiveRecord::Base
  attr_accessible :down, :post_id, :up
end
