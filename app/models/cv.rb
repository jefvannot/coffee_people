class Cv < ActiveRecord::Base
  validates :job, presence: true
  validates :first_name, presence: true
  validates :email, presence: true
  validates :city, presence: true
end
