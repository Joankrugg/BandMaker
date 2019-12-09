class AddMobilityToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mobility, :boolean
  end
end
