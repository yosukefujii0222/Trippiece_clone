class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :recommend, counter_cache: :fav_count
end
