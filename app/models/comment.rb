class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :tabs, through: :posts

  validates :content, presence: true

end
