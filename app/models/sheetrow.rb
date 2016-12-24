class Sheetrow < ApplicationRecord
  belongs_to :roll
  has_many :sheetrow_assignment_processes
  has_many :assignment_processes, through: :sheetrow_assignment_processes
end
