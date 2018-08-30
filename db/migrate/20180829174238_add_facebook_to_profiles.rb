class AddFacebookToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :facebook, :string, default: "http://www.facebook.com"
  end
end
