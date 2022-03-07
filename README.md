## Solidity Programming Language [Handy Points]

+ Contract Oriented, high-level statically typed programming language
+ used to create contracts for uses such as voting, crowdfunding, blind auctions, and multi-signature wallets
+ Case Sensitive

### Global Variables
+ Special variables exists in the global namespace used to get information about the blockchain

### State Variables
+ Variables declared at contract level
+ They are stored in Blockchain permanently in contract storage
+ String is always by-default declared/used/stored in contract storage
+ To use String inside function use memory keyword
+ Need to pay certain gas amount each time state variables are declared
+ Default value of state var can be changed:
  + using contract constructor
  + init var at declatarion
  + using setter function
+ A default value is assigned to declared variables
+ By default variable visibility is private
+ No concept of NULL or None
+ suffixing public to variable_name creates a get_function for that variable
+ pure function: does not change or read state variable

### Local Variables
+ declared inside function body
+ stored in stack and not in contract storage
+ do not cost gas
+ to use string inside function or stack memory, use memory keyword
+ memory keyword can't be used at contract level


### Functions
+ Syntax
```js
function function_name(arguments) visibility_of_function pure/view return_type
```
+ getter function is not required when prefixed public to variable_name: it creates a function automatically by variable's name
+ setter functions require to pay gas amount because/if they change state variables


### Byte Array
+ 1 byte = 8 bits
+ 1 hexadecimal digit = 4 bits
+ elements of byte array are stored in form of hexadecimal digits
+ Immutable array
+ 0s are added at end if elements does not occupy entire space of array
+ Syntax
```Solidity
bytes<1-32> public arrName;
```


### Loops
+ loops are required to be bound inside a function
do...while loop
while loop
for loop 


### Structure
+ Structures can be created inside and outside of contract storage
+ Structures created outside of contract can be used in multiple contracts


### Mapping
+ key: value
+ Key cannot be of type mapping, dynamic array, enum, struct
+ Value can be of any type
+ Mappings are always stored in storage wheather they are declared in contract storage or not
+ For Mappings, gas amount is to be paid

### Visibility of functions

|public|private|internal|external|
|:--:|:--:|:--:|:--:|
|outside|x|x|outside|
|within|within|within|x|
|derived|x|derived|derived|
|other|x|x|other|

