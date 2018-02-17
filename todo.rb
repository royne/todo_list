require "sinatra"
require "make_todo"


get '/' do
  erb :index
end

post '/task' do
  erb :task
end

get '/task' do
  @new_task
  @mostrar_array
  save_task
  erb :task
end

get '/delete/:id' do
  @element = Tarea.find(params[:id])
  erb :delete
end
#
#metodos
#

#guarda tareas
def save_task
  if params[:new_task] && params[:new_task]!=""
    Tarea.create("#{params[:new_task]}")
  end
end

#elimina tareas
def eliminar
  Tarea.destroy(params[:id])
end

#muestra las tareas
def mostrar_tarea
  @mostrar_array = Tarea.all
end
