class Game < ApplicationRecord
  has_many :posts
  has_many :ratings

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :genre, presence: true
  # validates :category, inclusion: { in: ['chinese', 'italian', 'french', 'belgian', 'japanese'] }
end

  # <%= f.input :name %>
  # <%= f.input :genre %>
  # <%= f.input :image_url %>
  # <%= f.input :description %>
  # <%= f.input :price %>
  # <%= f.input :rating %>
