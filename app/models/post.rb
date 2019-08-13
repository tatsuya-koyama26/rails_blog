class Post < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 2, message: '短すぎます!'}
  validates :title, presence: true, length: { minimum: 1, message: '短すぎます!'}
  validates :content, presence: true, length: { minimum: 2, message: '短すぎます!'}

  has_many :comments
end
