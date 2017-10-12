class Tag < ActiveRecord::Base
  has_many :recommend_tags
  has_many  :recommends, through: :recommend_tags
end
