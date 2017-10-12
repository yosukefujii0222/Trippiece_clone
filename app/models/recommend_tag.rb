class RecommendTag < ActiveRecord::Base
  belongs_to :recommend
  belongs_to :tag
end
