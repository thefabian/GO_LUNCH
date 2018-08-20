class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.datetime :date
      t.string :location
      t.string :kind
      t.references :user, foreign_key: true
      t.references :lunch, foreign_key: true

      t.timestamps
    end
  end
end
