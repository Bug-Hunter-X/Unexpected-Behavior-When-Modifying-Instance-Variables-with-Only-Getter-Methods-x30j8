```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  attr_accessor :value #Creates both getter and setter methods
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

#Alternatively you can define the setter method manually
class MyClass
  def initialize(value)
    @value = value
  end
  attr_reader :value
  def value=(new_value)
    @value = new_value
  end
end
my_object = MyClass.new(10)
puts my_object.value
my_object.value = 20
puts my_object.value
```