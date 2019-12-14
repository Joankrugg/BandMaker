class CreateBandProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :band_projects do |t|
      t.string :name
      t.string :city
      t.string :photo
      t.text :influence

      t.timestamps
    end
  end
end
