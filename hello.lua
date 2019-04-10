-- hello world
print("hello world")
--
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


-- Lua has a unique feature that many traditional languages don't, multiple return values. This feature allows one function to return multiple values. To return multiple values, assign the result of the function to a list of variables separated by commas.
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
--The only data structure provided by Lua is the table. 
--The table is one of the built-in data types Lua provides.
--Tables are powerful enough to implement other data structures, such as lists, queues, or stacks.
--Lua is not object-oriented; the language does not have support for objects. 
--However, using tables and meta-tables, an object system can be implemented from the ground up.