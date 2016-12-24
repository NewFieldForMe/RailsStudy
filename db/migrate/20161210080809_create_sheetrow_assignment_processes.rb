class CreateSheetrowAssignmentProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :sheetrow_assignment_processes do |t|
      t.integer :sheetrow_id
      t.integer :assignment_process_id

      t.timestamps
    end
  end
end
