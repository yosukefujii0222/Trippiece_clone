class LinkUrl < ActiveRecord::Base
  has_many :recommend_urls
  has_many  :recommends, through: :recomennd_urls
end
