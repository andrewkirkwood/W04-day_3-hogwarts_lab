require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# home
get '/hogwarts/?' do
  erb(:home)
end
# index
get '/hogwarts/students/?' do
  @students = Student.all()
  erb(:index)
end
# new
get '/hogwarts/students/new/?' do
  erb(:new)
end
# create
post '/hogwarts/students/?' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end
# edit

# update

# destroy
