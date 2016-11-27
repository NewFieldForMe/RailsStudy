class CreateSheetrows < ActiveRecord::Migration[5.0]
  def change
    create_table :sheetrows do |t|
      t.integer :order_num
      t.string :scene_type
      t.date :start_date
      t.date :end_date
      t.text :comment_title
      t.text :comment

      t.timestamps
    end
  end
end
