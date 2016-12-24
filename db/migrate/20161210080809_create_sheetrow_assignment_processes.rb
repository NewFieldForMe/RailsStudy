class CreateSheetrowAssignmentProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :sheetrow_assignment_processes do |t|
      t.references :sheetrow, index: true, null: false, foreign_key: true
      t.references :assignment_process, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
