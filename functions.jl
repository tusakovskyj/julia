# This is a test to isolate the error.

function greet_user(name::String)
    # The dollar sign is essential for interpolation.
    # This line should print "Hello, Alice! Welcome."
    println("Hello, $name! Welcome.")
end

println("Calling function...")
greet_user("Alice")
println("...function call finished.")
