# "Hello, World!" is often the first program one writes.
println("Hello, World!")
println("-"^20) # A separator for clarity

# --- Variables in Julia ---
# In Julia, you don't need to declare a variable's type explicitly.
# A variable is created when you assign a value to it.
# The type is inferred from the value assigned.

# --- Basic Data Types ---

# Integer (e.g., 1, 100, -50)
x = 10
println("The value of x is ", x, " and its type is ", typeof(x))

# Floating-point number (e.g., 1.0, 3.14, -0.5)
y = 2.5
println("The value of y is ", y, " and its type is ", typeof(y))

# String (text)
message = "This is a string in Julia."
println(message, " Its type is ", typeof(message))

# Boolean (true or false)
is_julia_fast = true
println("Is Julia fast? ", is_julia_fast, ". Its type is ", typeof(is_julia_fast))

println("-"^20)

# --- Type Annotations ---
# You can optionally specify the type of a variable using the :: operator.
# This can help catch type-related bugs and can sometimes improve performance.
radius::Float64 = 5.0
println("The radius is ", radius)

# If you try to assign a value of a different type to a type-annotated variable,
# you will get an error. For example, the following line would fail:
# radius = "hello" # This would cause a TypeError.

# Another example with an Integer type
points::Int = 100
println("You have ", points, " points.")

println("-"^20)

# --- Reassignment ---
# Variables are mutable by default, meaning you can change their value.
a = 5
println("The initial value of 'a' is ", a)
a = a + 10 # 'a' is now 15
a = 3 # You can also assign a completely new value
println("The new value of 'a' is ", a)

println("-"^20)

# --- Constants ---
# If you want a binding that cannot be changed, you can declare it as a constant.
# The convention is to use all uppercase for constant names.
const PI = 3.14159
println("The value of the constant PI is ", PI)

# IMPORTANT: While you can technically reassign a constant in Julia,
# it is very bad practice and will print a warning to the console.
# For example: PI = 3.14 would show a warning.

println("-"^20)

# --- Naming Conventions ---
# Variable names are case-sensitive.
# 'myvariable', 'myVariable', and 'MYVARIABLE' are three different variables.
# The community convention in Julia is to use lowercase with underscores for
# multi-word variable names (this is called "snake_case").
long_variable_name = "snake_case_is_preferred"
println(long_variable_name)

# Julia also allows many unicode characters in variable names!
δ = 0.001
println("Delta (δ) is ", δ)

println("-"^20)

# --- String Interpolation ---
# You can embed variables and expressions directly into strings using '$'.
# This is often more readable than joining multiple parts together.
name = "Alex"
age = 30
# Simple variable interpolation
println("My name is $name and I am $age years old.")

# For more complex expressions, wrap them in parentheses after the '$'.
println("In 5 years, I will be $(age + 5) years old.")
area = PI * radius^2
println("The area of a circle with radius $radius is $area.")

println("-"^20)

const const_test_1 = 1
var_test_1 = 10
var_test_2 = 20
var_test_x = "Word"

println("Now we will test our skills:")
println("We can put three variables together: $(const_test_1), which is a constant so you cannot change its value, $(var_test_1), $(var_test_2) and $(var_test_x).")

println("-"^20)