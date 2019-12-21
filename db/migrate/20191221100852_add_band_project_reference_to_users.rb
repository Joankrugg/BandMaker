class AddBandProjectReferenceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :band_projects, :user, foreign_key: true
  end
end
