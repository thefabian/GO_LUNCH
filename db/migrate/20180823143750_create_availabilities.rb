class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.datetime :date
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
