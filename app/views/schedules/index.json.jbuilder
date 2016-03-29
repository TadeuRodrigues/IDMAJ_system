json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :teacher_id, :type_of_class_id, :age_of_student_id, :time_in, :time_out
  json.url schedule_url(schedule, format: :json)
end
