# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
  validates :name, presence: true

  has_many :groups
  has_many :employees

  def setup_groups(employee_arr)
    # O(n) clone our array elements so we dont mutate original
    employees = employee_arr.map { |el| el }

    group_qty = find_group_size(employee_arr)

    # instantiate a 2D array as group buckets
    result = Array.new(group_qty) { Array.new }
    # O(n) placement of each employee into a group bucket
    until employees.empty?
      result.each do |arr|
        arr << employees.shift
      end
    end
    result
  end

  def find_group_size(arr)
    length_to_check = is_prime?(arr.length) ? arr.length - 1 : arr.length
    amount = 3
    while amount <= length_to_check
      if length_to_check % amount == 0
        return amount
      else
        amount += 1
      end
    end
  end

  def is_prime?(num)
    (1...num).select { |el| num % el == 0 }.reduce(:+) == 1
  end
end
