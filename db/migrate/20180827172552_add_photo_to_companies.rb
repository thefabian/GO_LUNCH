class AddPhotoToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :photo, :string
  end
end
