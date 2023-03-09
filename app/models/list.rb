class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy # A list has many bookmarks # When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
  has_many :movies, through: :bookmarks # A list has many movies through bookmarks # You can’t delete a movie if it is referenced in at least one bookmark.

  # A list must have a unique name.
  validates :name, presence: true, uniqueness: true
end
