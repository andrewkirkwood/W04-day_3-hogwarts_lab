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

# show
get '/hogwarts/students/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

# create
post '/hogwarts/students/?' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end
# edit
get '/hogwarts/students/:id/edit/?' do
  @student = Student.find(params[:id])
  erb(:edit)
end

# update

# destroy
