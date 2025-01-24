class CreateChallengeCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :challenge_categories do |t|
      t.references :challenges, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
