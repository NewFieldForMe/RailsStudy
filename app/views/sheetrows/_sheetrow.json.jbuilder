json.extract! sheetrow, :id, :order_num, :scene_type, :start_date, :end_date, :comment_title, :comment, :created_at, :updated_at
json.url sheetrow_url(sheetrow, format: :json)