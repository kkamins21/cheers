class Comment < ActiveRecord::Base
  belongs_to :coctail
  belongs_to :user
  attr_accessible :comments, :user_id
end
