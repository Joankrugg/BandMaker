class CreateInstrumentPractices < ActiveRecord::Migration[6.0]
  def change
    create_table :instrument_practices do |t|
      t.references :user, foreign_key: true
      t.references :instrument, foreign_key: true

      t.timestamps
    end
  end
end
