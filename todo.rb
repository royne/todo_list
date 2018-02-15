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
  save_task
  erb :task
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
  Tarea.destroy(5167)
end

#muestra las tareas
def mostrar_tarea
  mostrar = Tarea.all
  @mostrar_array = Array.new

  mostrar.each do |element|
    @mostrar_array << element['title']
  end
  @mostrar_array
end
