class AddEmailToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :email, :string
  end
end
