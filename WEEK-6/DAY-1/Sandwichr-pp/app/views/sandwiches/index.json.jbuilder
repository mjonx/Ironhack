json.array!(@sandwiches) do |x|
  json.name x.name
  json.bread_type x.bread_type
end
