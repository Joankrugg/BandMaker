class AddColumnMessageToApplying < ActiveRecord::Migration[6.0]
  def change
    add_column :applyings, :message, :text
  end
end
