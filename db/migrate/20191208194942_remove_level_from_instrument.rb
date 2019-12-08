class RemoveLevelFromInstrument < ActiveRecord::Migration[6.0]
  def change
    remove_column :instruments, :level, :integer
  end
end
