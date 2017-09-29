class RecommendUrl < ActiveRecord::Base
  belongs_to :recommend
  belongs_to :link_url
end
