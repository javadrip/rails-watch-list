class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false, index: { unique: true } # A list must have a unique name.

      t.timestamps
    end
  end
end
