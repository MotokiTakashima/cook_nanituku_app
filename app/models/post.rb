class Post < ApplicationRecord
  belongs_to :user
  validates :content, :recipe, :title, presence: true
end
