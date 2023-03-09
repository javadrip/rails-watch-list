class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false, index: { unique: true }
      t.text :overview, null: false, index: { unique: true }
      t.string :poster_url, null: false
      t.float :rating, null: false

      t.timestamps
    end
  end
end
