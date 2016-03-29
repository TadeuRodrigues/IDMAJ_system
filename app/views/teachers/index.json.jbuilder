json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :firstname, :lastname, :CIN, :email, :phone_id
  json.url teacher_url(teacher, format: :json)
end
