class AddRequestToLunches < ActiveRecord::Migration[5.2]
  def change
    add_reference :lunches, :request_1, index: true, foreign_key: { to_table: :requests }
    add_reference :lunches, :request_2, index: true, foreign_key: { to_table: :requests }
  end
end
