require "sinatra"
require "make_todo"

get '/' do
  erb :index
end

post '/task' do
  erb :task
end
