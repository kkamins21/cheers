class Rating < ActiveRecord::Base
  belongs_to :coctail
  belongs_to :user
  attr_accessible :ratings, :user_id
end
