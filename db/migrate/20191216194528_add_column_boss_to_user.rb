class AddColumnBossToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :boss, :boolean, null: false, default: false
  end
end
