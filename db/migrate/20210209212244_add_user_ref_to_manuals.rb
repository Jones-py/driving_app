class AddUserRefToManuals < ActiveRecord::Migration[5.2]
  def change
    add_reference :manuals, :user, foreign_key: true
  end
end
