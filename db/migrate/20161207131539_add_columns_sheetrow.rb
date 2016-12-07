class AddColumnsSheetrow < ActiveRecord::Migration[5.0]
  def change
    add_column :sheetrows, :scale, :string
    add_column :sheetrows, :language, :string
    add_column :sheetrows, :DB, :string
    add_column :sheetrows, :OS, :string
    add_column :sheetrows, :tools, :string
  end
end
