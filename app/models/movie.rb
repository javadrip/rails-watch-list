class Movie < ApplicationRecord
  has_many :bookmarks # A movie has many bookmarks

  # A movie must have a unique title and an overview.
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
