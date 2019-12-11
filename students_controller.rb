require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index
get '/hogwarts' do
  erb(:index)
end
# show
get '/hogwarts/students' do
  @students = Student.all()
  erb(:students)
end
# new

# create

# edit

# update

# destroy
