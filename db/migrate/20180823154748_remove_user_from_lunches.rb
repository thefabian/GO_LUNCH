class RemoveUserFromLunches < ActiveRecord::Migration[5.2]
  def change
    remove_reference :lunches, :user_1
    remove_reference :lunches, :user_2
  end
end
