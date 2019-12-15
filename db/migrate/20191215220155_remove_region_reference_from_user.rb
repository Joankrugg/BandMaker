class RemoveRegionReferenceFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :region, index:true, foreign_key: true
  end
end
