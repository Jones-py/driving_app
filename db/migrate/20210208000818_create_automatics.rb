class CreateAutomatics < ActiveRecord::Migration[5.2]
  def change
    create_table :automatics do |t|

      t.timestamps
    end
  end
end
