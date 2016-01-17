class Job < ActiveRecord::Base
  validates :firm_name, presence: true
  validates :firm_email, presence: true
  validates :proposed_job, presence: true
  validates :job_city, presence: true

end
