class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 50}
  validates :recipe, presence: true, length: { maximum: 500 }
  validates :content, presence: true, length: { maximum: 500}
end
