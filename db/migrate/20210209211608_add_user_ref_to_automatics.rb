class AddUserRefToAutomatics < ActiveRecord::Migration[5.2]
  def change
    add_reference :automatics, :user, foreign_key: true
  end
end
