class AddRollRefToSheetrow < ActiveRecord::Migration[5.0]
  def change
    add_reference :sheetrows, :roll, foreign_key: true
  end
end
