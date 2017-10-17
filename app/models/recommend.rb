class Recommend < ActiveRecord::Base
  has_many :images
  has_many :comments
  accepts_nested_attributes_for :images
  has_many :recommend_urls
  has_many  :link_urls, through: :recommend_urls
  acts_as_taggable_on :labels
  acts_as_taggable
  acts_as_ordered_taggable_on :recotags
  belongs_to :user
  has_many :favorites
  has_many :users, through: :favorites
  mount_uploader :image, ImageUploader
  validates :title, presence: true

  def favorites_for(user)
    favorites.find_by(user_id: user)
  end
end
