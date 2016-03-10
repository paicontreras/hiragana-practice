#Ruby Study Notes

##Data types
- Numbers = 1, -1, -1.0, 597
- Strings = "hello"
- Array = [ 1, 99, 2]
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

To add an element at the end of an array
```[1, 2, 3]<<4 = [1, 2, 3, 4]```

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

Default value
```
my_hash = Hash.new(0)
```

Delete a hash key
```
my_hash.delete(key)
```

Iterate over a hash
```
hash.each {|key, value|    }
```

Select a certain criteria
```
hash.select {|key, value| value < 97}
```

Iterate over keys only
```
hash.each_key
```

Iterate over values only
```
hash.each_value
```

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
example: if x< 10 then x+=1 end

**If (one line)**
```
action if condition
```
example: puts "hello" if true

**Ternary conditional expresion (three arguments)**
This is a shorthand statement for a simple if...else statement
```
boolean ? do this if true: do this if false 
```
example: puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4!"

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
**********************************************************************
(Se utiliza cuando se necesita para crear una instancia de una variable o de herencia. Puede ser privado (después de private keyword). Es un blueprint del cual objetos indivuales son creados, por ejemplo un auto tiene caracteristicas globales, wheels, horsepower, fuel, gas tank que van variando. y además tiene funciones como driving, speeding, etc. La clase es la caracteristica + funciones. Diferentes valores dan diferentes instancias: un ferrari, un volvo, etc.)
```
class Name
  def namemethod
  #Do something
  end
end

name = Nombreclase.new()
```
