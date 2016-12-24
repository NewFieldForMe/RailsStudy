class AssignmentProcess < ApplicationRecord
  has_many :sheetrow_assignment_processes
  has_many :sheetrows, through: :sheetrow_assignment_processes
end
