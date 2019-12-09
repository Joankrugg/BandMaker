class CreateFavoriteGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_genres do |t|
      t.references :user, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
