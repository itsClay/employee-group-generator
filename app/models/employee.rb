# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# I wasn't 100% sure if we wanted Employee to be a completely seperate 
# entity from User or if we wanted to inherit from User. This would make
# things a little more difficult since a User making another User would 
# require Auth.

class Employee < ApplicationRecord
  validates :first_name, :last_name, presence: true

  has_many :groups
  has_many :companies,
    primary_key: :id,
    foreign_key: :company_id,
    class_name: :Company
end
