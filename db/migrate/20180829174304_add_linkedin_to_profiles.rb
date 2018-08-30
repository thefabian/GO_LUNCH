class AddLinkedinToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :linkedin, :string, default: "http://www.linked.com"
  end
end
