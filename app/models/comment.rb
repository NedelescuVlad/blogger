class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :articles, through: :taggings
end
