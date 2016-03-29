json.array!(@type_of_classes) do |type_of_class|
  json.extract! type_of_class, :id, :name
  json.url type_of_class_url(type_of_class, format: :json)
end
