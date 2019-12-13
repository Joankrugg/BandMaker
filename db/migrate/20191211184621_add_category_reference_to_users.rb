class AddCategoryReferenceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :category, foreign_key: true
  end
end
