class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description, null: true

      t.timestamps
    end
  end
end
