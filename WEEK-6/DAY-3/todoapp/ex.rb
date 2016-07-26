User.find_by(name: 'Charlie') #find_by is you know its going to return only 1 (LIMIT 1)

Task.where(user_id: 3) #where if you need it to return multiple

Task.create(name: 'Race a cheetah', user_id: 3)

my_task = Task.find_by(name: 'Race a cheetah')
my_task.update(name: 'Race a giraffe')
my_task.save

my_tasks = Task.where(user_id: 1)
my_tasks.destroy

user_3 = User.find_by(id: 3)
user_3.location

User.find_by(3).location

######
bob = User.find_by(name: 'Bob')
bob.tasks

User.find_by(name: 'Bob').tasks
######

users_spain = User.where(location: 'Spain')
users_spain.each {|user| user.tasks.destroy_all} #most than one user with location spain so need to itterate over all of them with a loop
