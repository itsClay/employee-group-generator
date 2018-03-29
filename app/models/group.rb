# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ApplicationRecord
  has_many :employees
  belongs_to :company
end
