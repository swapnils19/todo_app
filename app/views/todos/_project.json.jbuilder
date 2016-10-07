json.extract! todo, :id, :todo_name, :created_at, :updated_at
json.url todo_url(todo, format: :json)