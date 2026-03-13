# --- Functions: Reusable Blocks of Code ---

println("
" * "="^20)
println("FUNCTIONS")
println("="^20)

# Functions are blocks of organized, reusable code that perform a single, related action.
# They help make your code more modular, easier to read, and less repetitive.

# --- Defining and Calling a Basic Function ---

# The 'function' keyword starts the definition, and 'end' closes it.
function say_hello()
    println("Hello from inside a function!")
end

# To run the code inside the function, you "call" it by its name followed by parentheses:
println("Calling the 'say_hello' function:")
say_hello()

println("-"^20)

# --- Functions with Arguments ---
# You can pass data, known as arguments, into a function to make it more flexible.

function greet_user(name::String)
    println("Hello ", name, "! Welcome.")
end

greet_user("Alice")
greet_user("Bob")

println("-"^20)

# --- Functions That Return Values ---
# Functions can process data and send a result back (return it) to where it was called.

function add_numbers(x::Int, y::Int)
    # The 'return' keyword explicitly specifies the value to send back.
    return x + y
end

sum_result = add_numbers(5, 3)
println("The sum of 5 and 3 is: $sum_result")

# In Julia, the value of the last expression in a function is automatically returned.
# This is a very common and idiomatic style.
function multiply_numbers(a, b)
    a * b # The result of this multiplication will be returned implicitly
end

product_result = multiply_numbers(4, 6)
println("The product of 4 and 6 is: $product_result")

println("-"^20)

# --- A Key Julia Feature: Multiple Dispatch ---
# In Julia, you can define many different versions of the same function that
# behave differently based on the *type* of their arguments. This is a core
# feature of the language called multiple dispatch.

# This version of 'process' is defined to only accept Numbers.
function process(input::Number)
    println("Processing the number: $(input^2)")
end

# This version of 'process' has the same name but is defined for Strings.
function process(input::String)
    println("Processing the string: '$(uppercase(input))'")
end

# Julia automatically calls the correct version of the function based on the input type.
println("Demonstrating multiple dispatch:")
process(10)       # This will call the Number version.
process("hello")  # This will call the String version.

# This is a very powerful feature that makes Julia code both fast and highly expressive.
