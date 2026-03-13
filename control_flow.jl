# --- Control Flow: Making Decisions and Looping ---

println("
" * "="^20)
println("CONTROL FLOW")
println("="^20)

# --- If-Elseif-Else Statements ---
# These are used to execute code based on conditions.

score = 85

if score >= 90
    println("Grade: A")
elseif score >= 80
    println("Grade: B")
elseif score >= 70
    println("Grade: C")
else
    println("Grade: D or F")
end

# You can also use boolean values directly
is_raining = false
if !is_raining # '!' means 'not'
    println("It's a sunny day!")
end

println("-"^20)

# --- For Loops ---
# Used for iterating over a sequence of values.

# Looping over a range of numbers
println("Counting to 5:")
for i in 1:5
    println(i)
end

# The 'in' keyword can also be written as '∈' (type \in<tab> in many editors)
# for i ∈ 1:5 ...

# Looping over an array (a type of collection)
fruits = ["apple", "banana", "cherry"]
println("
My favorite fruits:")
for fruit in fruits
    println("I love to eat $fruit.")
end

println("-"^20)

# --- While Loops ---
# Executes a block of code as long as a specified condition is true.

countdown = 3
println("Preparing for liftoff:")
while countdown > 0
    println("$countdown...")
    # When modifying a global variable from within a loop in a script,
    # you must use the 'global' keyword to specify that you are
    # changing the variable in the outer scope.
    global countdown = countdown - 1
end
println("Liftoff!")
