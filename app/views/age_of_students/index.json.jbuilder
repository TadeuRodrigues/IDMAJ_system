json.array!(@age_of_students) do |age_of_student|
  json.extract! age_of_student, :id, :age
  json.url age_of_student_url(age_of_student, format: :json)
end
