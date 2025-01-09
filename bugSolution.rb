```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def update_value(new_value)
    @value = new_value
    return @value # Explicitly return the updated value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
updated_value = my_object.update_value(20) # updated_value will now hold 20
puts my_object.value # Output: 20
puts updated_value # Output: 20
```