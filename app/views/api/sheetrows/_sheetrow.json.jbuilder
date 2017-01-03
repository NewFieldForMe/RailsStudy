json.sheetrow do |json|
  # json.merge! sheetrow.attributes
  json.extract! sheetrow, :id, :order_num, :scene_type, :start_date, :end_date, :comment, :comment_title, :scale, :language, :DB, :OS, :tools
  json.roll do |json|
    json.extract! sheetrow.roll, :name
  end
  json.assignment_processes do |json|
    json.array! sheetrow.assignment_processes, :id, :name
  end
  json.user do |json|
    json.extract! sheetrow.user, :accountid
  end
end
