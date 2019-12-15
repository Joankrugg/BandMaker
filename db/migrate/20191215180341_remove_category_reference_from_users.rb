class RemoveCategoryReferenceFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :category, index:true, foreign_key: true
  end
end
