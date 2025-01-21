class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :rating
      t.text :overview
      t.text :review
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
