class CreateManuals < ActiveRecord::Migration[5.2]
  def change
    create_table :manuals do |t|
        t.string :first_name
        t.string :last_name
        t.integer :mobile_number
        t.string :course_period
        t.date :start_date
        t.string :payment_type
      t.timestamps
    end
  end
end
