json.array!(@sandwiches) do |sandwich|
  json.name sandwich.name
  json.bread_type sandwich.bread_type
end
