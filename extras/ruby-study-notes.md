#Ruby Study Notes

##Data types
- Numbers = 1, -1, -1.0, 597
- Strings = "hello"
- Array = [1, 99, 2]
- Hashes = {key1: "value", key2: "value"}
- Symbols = :symbol
- Boolean = true, false, nil 
- Constants = "value"

##Array
```
my_array = [1, 2, true, "no"]
my_array[2] = true
```
**Two-Dimensional Arrays**
```
multi_array = [[0,1,2],[3,4,5],[6,7,8]]
multi_array[0][2] = 2
```

To add an element at the end of an array `[1, 2, 3]<<4 = [1, 2, 3, 4]`

##Hashes
**Literal notation**
```
my_hash = {
  key1: value1,
  key2: value2,
  key3: value3
}
puts my_hash["key1"] 
```
**Constructor notation**
```
my_hash = Hash.new
my_hash["key1"] = "value1"
```

Default value `my_hash = Hash.new(0)`

Delete a hash key `my_hash.delete(key)`

Iterate over a hash `hash.each {|key, value|    }`

Select a certain criteria `hash.select {|key, value| value < 97}`

Iterate over keys only `hash.each_key`

Iterate over values only `hash.each_value`

##Symbols
In Ruby, a symbol is simply a name used in your program. It is used when you need a string but you don't want to print it
```
:symbol, :a, :hola
```

##Constants
Start with a capital letter, and aren't meant to be changed
```
EmpireStateBuilding = "350 5th Avenue, NYC, NYC"
```

##Variables
They declare values. Begins with a lowercase letter or underscore, but not with a number. 
```
$global
@instances 
@@class
local
```
- **Global variables** are the same in every part of the program, and visible everywhere in the program.
- **Instance variables** define the attributes of an only object, and available across methods for any particular instance or object. It changes from object to object
- **Class variables** define the attributes of many objects. Its scope is all the instances of a class.
- **Local variables** are reachable in its own module, method or block.

##If / elseif / else
**If**
```
if condition
  #do something
end
```
**If/else**
```
if condition
  #do something
else
  #do something
end
```
**If/elseif/else**
```
if condition
  #do something
elseif condition
  #do something
elseif condition
  #do something
else
  #do something
end
```
**If then (one line)**
```
if condition then #do something end
```
example: `if x< 10 then x+=1 end`

**If (one line)**
```
action if condition
```
example: `puts "hello" if true`

**Ternary conditional expresion (three arguments)**
This is a shorthand statement for a simple if...else statement
```
boolean ? do this if true: do this if false 
```
example: `puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4!"`

It's the same as:
if true
puts "True!"
else
puts "False"
end

**Unless**
```
unless condition
  #do something
else
  #do something
end
```
**Unless (one line)**
```
action unless condition
```
##Case

If we have a lot of conditions to check
```
case name
when "A"
  #do something
when "B"
  #do something
when "C"
  #do something
else
  #do something
end
```
**Case (short version)**
```
case name
  when x1 then #do something
  when x2 then #do something
  when x3 then #do something
  else #do something
end
```

##Loop (while, until, for)
**While loop**

It loops an action while the condition is true, but you don't know how many times you ave to repeat it. Be careful with the variables, they shouldn't be infinite. 
```
while conditional do
  #do something
end
```
**Until loop**

It loops until a true condition is met
```
until conditional do
  #do something
end
```
**For loop**

It isn't used as often as .each because it creates a new scope. It's used when you know how many times you will loop. 
```
for iterator in iterable_object
  #do something
end
```
example: for num in 1...10 puts num end

##Class
A class is a way of organizing and producing objects with similar attributes and methods. It's a blueprint. For example, a car has global characteristics that vary ( wheels, horsepower, fuel, gas tank) and it has functions (driving, speeding). A class contains the characteristics and functions. Diferent values create different instances: a ferrari, a volvo, etc.
```
class Name
  def namemethod
  #Do something
  end
end

name = Nombreclase.new()
```

##Methods
A method is a reusable section of code written to perform a specific task in a program. First you define it, then you call it. The parameter is the name you put between the method's parentheses when you define it, instead the argument is the piece of code you put between the method's parentheses when you call it. Call it with a dot.
```
def namemethod(arguments)
  #codeblock
end

namemethod(parameter)
```

Default value example
```
def hello(name, age=99)
  puts "#{name} is #{age} years old" 
end

puts hello("Mr.Ruby") = Mr Ruby is 99 years old
```

**.each method**

It loops through each item in a list, hash, or other iterable object allowing you to perform operations on that value
```
.each
object.each {|item| #Do something}
```
```
.each
object.each do item #Do something
end
```
**.times method**
```
#4.times {puts "hola-"} = hola-hola-hola-hola-
```
**descending order method**
```
books.sort! do |firstBook, secondBook|
firstBook <=>secondBook
end
```

##Blocks
Blocks are not objects, but a way to create methods without a name. Can be combined with methods like .each and .times).

**for multiple lines**:
```
blockname do
  #do something
end
```

**for a single line**:
```
blockname{}
```

**yield**
```
def method_name(parameter)
yield parameter
end

method_name(argument) {#block]
```

##Procs
Procs are objects. A proc is a saved block we can use over and over.
```
name = Proc.new {|x| #do something}
```
There are three ways to call a Proc
- `x = anothervariable.select(&name)`
- `anothervariable(&name)`
- `name.call`

##Lambdas
Lambdas are objects. A Lambda is just like a proc, only it cares about the number of arguments it gets, and it returns to its calling method rather than returning immediately.
```
nameofvariable = lambda {|param| block}
```

##Some methods
- `.nil?` are you nil? are you empty?
- `.length` example "i love tokyo".length = 12
- `.reverse` reverse a string. example "bota".reverse = "atob"
- `.reverse!` modify and reverse a string
- `.upcase` 
- `.downcase`
- `.capitalize`
- `.capitalize!`
- `.x!` modifies an input without creating a copy
- `.x?` evaluate boolean true or false values
- `.gets` obtains input from the user. example: gets.chomp
- `.chomp` delete a line after the user's input
- `.include?` 
- `.gsub` global substitution. Used for search and replace
- `.gsub!(wordtofind, wordtoreplace)` replace the code in the place
- `.split()` string to array
- `.join(" ")` array to string.
- `.to_s` convert to string
- `.to_sym` convert to symbol
- `.intern` convert to symbol
- `.to_i` convert to integer
- `.to_f` convert to float. example: 5.to_f = 5.0
- `.sort` return a new reorder array. From A to Z, 1 to 1000..
- `.sort!` reorder an array and modifies it 
- `.collect{|x|#}` 
- `.collect!{|x|#}` 
- `.object_id` gets the ID of an object
- `.upto()` from a value up to a limit value. example: 95.upto(100){|x| print x, ""}
- `.downto()` from a value down to a limit value. example: "Z".downto("A"){|x| puts x}
- `.respond_to?` what methods that respond to an object. example: [1,2,3].respond_to?(:push) 
- `.class` what kind of objects it is? A String, integer, float, etc
- `.is_a?(String)` ask the kind of class. It is a string? a boolean?
- `.has_key?("x")` return a boolean. example my_hash.has_a?("color") = true
- `.strip` delete spaces and lines in a string


##Keywords
- `print " "` print a string
- `p` print everything, not only a string
- `w` writing
- `r` reading
- `a` add to end of a file
- `*` 'idea-*.txt' 
- `puts` puts everything in a new line
- `return` returns a value. It's used in methods
- `Integer` 
- `Float` decimal numbers
- `#` comments
- `==` comparator; equal to
- `!=` not equal
- `&&` and, both expressions are true
- `||` or, one or the other are true
- `!` not; makes true values false, and viceversa
- `**` exponential -> 2***3 = 8
- `%` remainder of division 25%7 = 4
- `||=` assign a value to a variable only if doesn't have a value
- `\n` new line -> 5.times {print "hello\n"}
- `#{hi}` strign interpolation
- `<<` shovel, add an element at the end. example: "Bart" <<"Simpson" = "Bart Simpson"
- `break` kicks you out of an iterating loop. break if i<0
- `next` jumps a value. example: next if i % 2 == 0, print i
- `nil` nothing at all, non-true value
