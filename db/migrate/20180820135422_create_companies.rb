class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :locations
      t.string :departments
      t.string :email
      t.string :employee

      t.timestamps
    end
  end
end
