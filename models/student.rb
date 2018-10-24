require_relative('../db/sql_runner')

class Student

  attr_reader :id
  attr_accessor :first_name, :last_name, :house_name, :age

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_name = options['house_name']
    @age = options['age'].to_i
  end


  def save()
    sql = "INSERT INTO students (
      first_name,
      last_name,
      house_name,
      age
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id"
    values = [@first_name, @last_name, @house_name, @age]
    student = SqlRunner.run(sql, values)
    @id = student['id'].to_i
  end
  #
  # def update()
  #   sql = "UPDATE pizza_orders
  #   SET
  #   (
  #     first_name,
  #     last_name,
  #     topping,
  #     quantity
  #   ) =
  #   (
  #     $1, $2, $3, $4
  #   )
  #   WHERE id = $5"
  #   values = [@first_name, @last_name, @topping, @quantity, @id]
  #   SqlRunner.run( sql, values )
  # end
  #
  # def self.delete_all()
  #   sql = "DELETE FROM pizza_orders;"
  #   SqlRunner.run(sql)
  # end
  #
  # def delete()
  #   sql = "DELETE FROM pizza_orders
  #   WHERE id = $1"
  #   values = [@id]
  #   SqlRunner.run( sql, values )
  # end
  #
  # def self.all()
  #   sql = "SELECT * FROM pizza_orders"
  #   pizzas = SqlRunner.run( sql )
  #   result = pizzas.map { |pizza| PizzaOrder.new( pizza ) }
  #   return result
  # end
  #
  # def self.find( id )
  #   sql = "SELECT * FROM pizza_orders WHERE id = $1"
  #   values = [id]
  #   pizza = SqlRunner.run( sql, values )
  #   result = PizzaOrder.new( pizza.first )
  #   return result
  # end

end
