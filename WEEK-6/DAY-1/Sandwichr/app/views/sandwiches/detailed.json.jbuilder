

json.name sandwich.name
json.bread_type sandwich.bread_type

json.array!(@ingredients) do |ingredient|
  json.name ingredient.name
  json.calories ingredient.calories
end
