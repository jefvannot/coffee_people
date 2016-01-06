class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :key
      t.string :job
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.string :experience
      t.string :start_date
      t.string :comment

      t.timestamps null: false
    end
  end
end
