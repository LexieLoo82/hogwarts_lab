require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/student')

get "/" do
  erb(:home)
end

get '/students' do
  @students = Student.all
  erb(:index)
end

get '/students/new' do
erb (:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  redirect to '/students'
end

# get '/pizza-orders/new' do
# erb (:new)
# end
#
# post '/pizza-orders' do
#   @order = PizzaOrder.new(params)
#   @order.save()
#   erb(:create)
# end
#
# get '/pizza-orders/:id' do
#   id = params['id']
#   @order = PizzaOrder.find(id)
#   erb(:show)
# end
#
# get '/pizza-orders/edit/:id' do
#   id = params['id']
#   @order = PizzaOrder.find(id)
#  erb (:edit)
# end
#
# post '/pizza-orders/:id' do
# PizzaOrder.new(params).update()
# redirect to "/pizza-orders"
# end
#
# post "/pizza-orders/:id/delete" do
#    order = PizzaOrder.find(params[:id])
#    order.delete()
#    redirect to "/pizza-orders"
# end
