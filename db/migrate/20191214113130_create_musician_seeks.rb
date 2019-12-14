class CreateMusicianSeeks < ActiveRecord::Migration[6.0]
  def change
    create_table :musician_seeks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :band_project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
