json.array!(@student_levels) do |student_level|
  json.extract! student_level, :id, :level
  json.url student_level_url(student_level, format: :json)
end
