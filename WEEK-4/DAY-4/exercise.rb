[*1..100].each do | num |
    p = Project.new(name: "Project number #{num}", description: "Description for project number #{num}")
    p.save
    p.time_entries.create(hours: num, minutes: (rand * 11).floor, date: Date.current + num.hours)
end
