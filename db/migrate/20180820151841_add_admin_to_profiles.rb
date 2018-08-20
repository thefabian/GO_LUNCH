class AddAdminToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :admin, :boolean
  end
end
