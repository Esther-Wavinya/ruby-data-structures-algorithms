One way Ruby allows you to represent a collection of data is with arrays, which you can think of as ordered lists. Rather than working with individual variables, numbers, or strings, an array allows you to create and manipulate an ordered and indexed collection of these data. The individual variables, numbers, or strings within an array are known as elements. An array can contain any combination of variables, numbers, strings, or other Ruby objects (including other arrays), although it is advisable to keep similar data types in any one array.


## Creating Arrays
Here are two basic arrays:

```
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]
```

Both arrays have five elements separated by commas. The first array contains integers, while the second array contains strings.

Arrays are commonly created with an `array literal`, which is simply a special syntax used to create instances of an array object. To create a new array using an array literal, use square brackets ([]).

An array can also be created by calling the Array.new method. When you call this method, you can also include up to 2 optional arguments (initial size and default value):

```
Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, 7)         #=> [7, 7, 7]
Array.new(3, true)      #=> [true, true, true]
```

## Accessing Elements
Every element in an array has an index, which is a numerical representation of the element’s position in the array. Like most other programming languages, Ruby arrays use zero-based indexing, which means that the index of the first element is 0, the index of the second element is 1, and so on. Accessing a specific element within an array is as simple as calling `myArray[x]`, where `x` is the index of the element you want. Calling an invalid position will result in nil. Ruby also allows the use of negative indices, which return elements starting from the end of an array, starting at [-1].

```
str_array = ["This", "is", "a", "small", "array"]

str_array[0]            #=> "This"
str_array[1]            #=> "is"
str_array[4]            #=> "array"
str_array[-1]           #=> "array"
str_array[-2]           #=> "small"
```

Finally, Ruby provides the `#first` and `#last` array methods, which should be self-explanatory. In addition, these methods can take an integer argument, e.g., `myArray.first(n)` or `myArray.last(n)`, which will return a new array that contains the first or last n elements of myArray, respectively.

```
str_array = ["This", "is", "a", "small", "array"]

str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]
```

## Adding and Removing Elements
Adding an element to an existing array is as simple as using the `#push` method or the shovel operator `<<`. Both methods will add elements to the end of an array and return that array with the new elements. The `#pop` method will remove the element at the end of an array and return the element that was removed.

```
num_array = [1, 2]

num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]
```

The methods `#shift` and `#unshift` are used to add and remove elements at the beginning of an array. The `#unshift` method adds elements to the beginning of an array and returns that array (much like `#push`). The `#shift` method removes the first element of an array and returns that element (much like `#pop`).

```
num_array = [2, 3, 4]

num_array.unshift(1)      #=> [1, 2, 3, 4]
num_array.shift           #=> 1
num_array                 #=> [2, 3, 4]
```

It’s also useful to know that both `#pop` and `#shift` can take integer arguments:

```
num_array = [1, 2, 3, 4, 5, 6]

num_array.pop(3)          #=> [4, 5, 6]
num_array.shift(2)        #=> [1, 2]
num_array                 #=> [3]
```

## Adding and Subtracting Arrays
What do you think will be the outcome of `[1, 2, 3] + [3, 4, 5]`?

If you guessed [1, 2, 3, 3, 4, 5], congratulations! Adding two arrays will return a new array built by concatenating them, similar to string concatenation. The `concat` method works the same way.

```
a = [1, 2, 3]
b = [3, 4, 5]

a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]
```

To find the difference between two arrays, you can subtract them using -. This method returns a copy of the first array, removing any elements that appear in the second array.

```
[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]
```

## Basic Methods
Ruby gives you many methods to manipulate arrays and their contents (over 150!).

As previously mentioned, there are many methods available to Ruby arrays, and the behavior of some methods change depending on a variety of factors, such as if they take arguments or not. Therefore, ruby-doc.org will be your best friend in maximizing your aptitude with arrays. So visit soon, and visit often.

Calling the `#methods` method on an array will also yield a long list of the available methods.

```
num_array.methods        #=> A very long list of methods
```

Here is a brief look at some other common array methods you might run into:

```
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"
```

