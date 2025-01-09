```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

#Attempting to modify @value directly from outside the class will not work
my_object.instance_variable_set(:@value, 20)
puts my_object.value # Output: 20

# However, if you try to reassign @value within a method that doesn't explicitly return a value,
# you might encounter unexpected behavior.

class MyClass
  def initialize(value)
    @value = value
  end

  def update_value(new_value)
    @value = new_value 
  end
end

my_object = MyClass.new(10)
my_object.update_value(20)
puts my_object.value # Output: 20

class MyClass
  def initialize(value)
    @value = value
  end

  def update_value(new_value)
    @value = new_value
    #Missing a return statement here
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
my_object.update_value(20) #The value of @value changes to 20, but the return value of the method is nil.
puts my_object.value # Output: 20
```