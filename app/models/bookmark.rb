class Bookmark < ApplicationRecord
  belongs_to :movie # A bookmark belongs to a movie
  belongs_to :list # A bookmark belongs to a list

  validates :comment, length: { minimum: 6 } # The comment of a bookmark cannot be shorter than 6 characters.
  validates :movie, presence: true, uniqueness: { scope: :list } # The [movie, list] pairings should be unique.
end
