class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment, presence: true, null: false
      t.references :movie, null: false, foreign_key: true # A bookmark must be linked to a movie and a list.
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
