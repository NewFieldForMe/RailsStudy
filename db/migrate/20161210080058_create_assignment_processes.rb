class CreateAssignmentProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :assignment_processes do |t|
      t.string :name

      t.timestamps
    end
  end
end
