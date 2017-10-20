class Comment < ActiveRecord::Base
  belongs_to :recommend
  belongs_to :user
end
