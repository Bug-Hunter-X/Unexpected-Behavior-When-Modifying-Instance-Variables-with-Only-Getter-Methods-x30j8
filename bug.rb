```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

#This is a common way to create a class and access its attributes.


#The following is an example of an uncommon bug involving unexpected behavior with instance variables.

class MyClass
  def initialize(value)
    @value = value
  end
  attr_reader :value  #Creates getter method only
  #If you don't have a setter method , an error might occur if we try to modify the attribute value using the assignment operator.

end
my_object = MyClass.new(10)
puts my_object.value
my_object.value = 20 #This will cause an error, because the setter is not defined.
puts my_object.value
```