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
[1, 2, 3]<<4 = [1, 2, 3, 4]


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
