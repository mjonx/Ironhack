  json.array!(@ingredients) do |x|
  json.name x.name
  json.calories x.calories
end