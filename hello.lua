-- hello world
print("hello world")

greeting = "hi"
print(greeting)

-- Basic types
-- nil: The absence of data. This type represents literal nothingness. If a certain piece of data is invalid or unknown, nil is usually the best way to represent that it is invalid or unknown.
-- Boolean: A value of true or false. A Boolean value is binary and can only ever be in one of two states, true or false.
-- number: A number can represent any real number: 0, -1, 5, or even decimals such as 3.14159265359.
-- string: A string is an array of characters. When declaring a string literal, it must be "enclosed within quotation marks."
-- function: A function is some code that is referred to by a name and can be executed any time.
-- table: A table contains information using key-value pairs. Tables will be covered in depth in Chapter 3, Tables and Objects.
-- userdata: Complex data structures defined in the C programming language.
-- thread: Threads can be used to execute code in parallel. Instead of your code running one set of commands, it can run several sets of commands at the same time.

print(undefined_variable) -- will print: nil

uinstanciated_variable = nil
print(uinstanciated_variable) -- will print: nil

print("**************************************************************************************************************")
-- Functions
-- Declare the function, takes two arguments
function AddAndPrint(x, y)
    local result = x + y;
    print (x .. "+" .. y .. "=" .. result)
  end
  
-- Call the function
AddAndPrint(2, 3)
-- Call the function a few times
AddAndPrint(2, 3, 7) -- Will print 2+3=5
AddAndPrint(4, 5, 8, 9, 10) -- Will print 4+5=9
AddAndPrint(6, 7, 11, 12, 14) -- Will print 6+7=13
-- UNCOMMENT NEX LINE TO CAUSE ERROR 
--AddAndPrint() -- ERROR 
-- lua: hello.lua:24: attempt to perform arithmetic on local 'x' (a nil value)
-- stack traceback:
--         hello.lua:24: in function 'AddAndPrint'
--         hello.lua:34: in main chunk
--         [C]: in ?


-- Lua has a unique feature that many traditional languages don't, multiple return values. 
-- This feature allows one function to return multiple values. 
-- To return multiple values, assign the result of the function to a list of variables separated by commas.
-- For example, you could write a function that takes a number for an argument and returns both the squared and cubed values of that number:
function SquareAndCube(x)
    squared = x * x
    cubed = x * x * x
    return squared, cubed
end
    
-- Call the function
s, c = SquareAndCube(2)
print ("Squared: " .. s) -- will print: Squared: 4
print ("Cubed: " .. c) -- will print: Cubed: 8

print("**************************************************************************************************************")
-- The only data structure provided by Lua is the table. 
-- The table is one of the built-in data types Lua provides.
-- Tables are powerful enough to implement other data structures, such as lists, queues, or stacks.
-- Lua is not object-oriented; the language does not have support for objects. 
-- However, using tables and meta-tables, an object system can be implemented from the ground up.
tbl = {} -- Creates table, assigns it to tbl variable
print("The type of a table is: " .. type(tbl))


print("**************************************************************************************************************")
-- Closures
-- Closures capture the enclosing state of a chunk. 
-- A great example of this is having a function that returns an anonymous function. 
-- The anonymous function can see the local variables of the enclosing function. 
-- However, because the anonymous function is returned, it can outlive the existing function.

-- When returning an anonymous function, it creates a closure. 
-- This closure captures its enclosing state (visible chunks). 
-- This mechanism lets you access the state of the enclosing function, even though that function is no longer executing.
    
function NextNumber()
  -- local to the NextNumber function
  local currentNumber = 0
  return function () -- anonymous function
    -- Because this anonymous function is
    -- created inside the NextNumber function
    -- it can see all members of NextNumber
    -- this function will remember the state
    -- of NextNumber, creating a closure!
    currentNumber = currentNumber + 1

    return currentNumber
  end
end

-- Assign the anonymous function to the variable next
next = NextNumber()
-- At this point, NextNumber has finished executing.

print (next()) -- call anonymous function using next
print (next()) -- call anonymous function using next
print (next()) -- call anonymous function using next

-- currentNumber does not exist in a global context!
print (currentNumber) -- will print nil

-- The NextNumber function in this example is often called a factory.
-- The function is called a factory because every time you call the function, it produces a new closure.
-- You can then call the resulting function.