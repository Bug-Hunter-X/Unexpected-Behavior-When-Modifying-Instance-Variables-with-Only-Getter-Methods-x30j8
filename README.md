# Ruby Uncommon Bug: Unexpected Instance Variable Modification

This repository demonstrates an uncommon bug in Ruby related to instance variable access.  The bug arises when a class defines a getter method for an instance variable using `attr_reader` but does not define a corresponding setter method.  Attempting to modify the instance variable directly then results in a `NoMethodError`.

This example highlights the importance of understanding Ruby's accessors and how they behave.  The solution demonstrates the correct way to manage instance variable access through proper getter and setter method definition or the use of `attr_accessor`.