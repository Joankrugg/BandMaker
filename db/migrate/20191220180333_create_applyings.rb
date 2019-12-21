class CreateApplyings < ActiveRecord::Migration[6.0]
  def change
    create_table :applyings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :band_project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
