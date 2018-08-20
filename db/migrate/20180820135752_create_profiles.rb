class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :email
      t.string :department
      t.string :location
      t.text :description
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
