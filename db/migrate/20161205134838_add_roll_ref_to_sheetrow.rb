class AddRollRefToSheetrow < ActiveRecord::Migration[5.0]
  def change
    add_column :sheetrows, :roll, :reference
  end
end
