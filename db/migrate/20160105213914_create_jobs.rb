class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :key
      t.string :firm_name
      t.string :firm_type
      t.string :firm_email
      t.string :proposed_job
      t.string :alternativ_jobjob_city
      t.string :job_start_date
      t.string :comment
      t.string :offer_issue

      t.timestamps null: false
    end
  end
end
