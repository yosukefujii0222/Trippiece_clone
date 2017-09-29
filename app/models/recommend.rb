class Recommend < ActiveRecord::Base
  has_many :images
  has_many :recommend_urls
  has_many  :link_urls, through: :recommend_urls
  has_many  :recommend_tags
  has_many  :tags, through: :recommend_tags
  belongs_to :user
end
