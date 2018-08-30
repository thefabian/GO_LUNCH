class AddXingToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :xing, :string, default: "http://www.xing.de"
  end
end
