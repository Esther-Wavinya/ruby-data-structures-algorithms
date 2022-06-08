# Addition
1 + 1   #=> 2

# Subtraction
2 - 1   #=> 1

# Multiplication
2 * 2   #=> 4

# Division
10 / 5  #=> 2

# Exponent
2 ** 2  #=> 4
3 ** 4  #=> 81

# Modulus (find the remainder of division)
8 % 2   #=> 0  (8 / 2 = 4; no remainder)
10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)


# Integers and Floats
# There are two main types of numbers in Ruby. Integers are whole numbers, such as 10. Floats are numbers that contain a decimal point, such as 10.5, 10.0, or 0.25.

# It’s important to keep in mind that when doing arithmetic with two integers in Ruby, the result will always be an integer.
17 / 5    #=> 3, not 3.4

# To obtain an accurate answer, just replace one of the integers in the expression with a float.
17 / 5.0  #=> 3.4


# Converting Number Types
# Ruby makes it very easy to convert floats to integers and vice versa.

# To convert an integer to a float:
13.to_f   #=> 13.0

# To convert a float to an integer:
13.0.to_i #=> 13
13.9.to_i #=> 13
# As shown in the last example above, when Ruby converts a float to an integer, the decimal places are simply cut off. Ruby doesn’t do any rounding in this conversion.

#Some Useful Number Methods
#There are many useful methods for numbers built into Ruby. For example,

#even?
6.even? #=> true
7.even? #=> false

#odd?
6.odd? #=> false
7.odd? #=> true


# Strings
# Strings, strings, wonderful things, use them well and…your app will…grow wings? Or something.

# At first glance, you might think that strings are just a bunch of characters that aren’t very useful beyond getting user input and outputting some information to the screen, but like Burt Reynolds passing up the chance to play Han Solo, you’d be wrong. Very wrong. What were you thinking, Burt?

# Double and Single Quotation Marks
# Strings can be formed with either double "" or single'' quotation marks, also known as string literals. They are pretty similar, but there are some differences. Specifically, string interpolation and the escape characters that we’ll discuss soon both only work inside double quotation marks, not single quotation marks.


# Concatenation
# In true Ruby style, there are plenty of ways to concatenate strings.

# With the plus operator:
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"


# Substrings
# You can access strings inside strings inside strings. Stringception! It’s super easy, too.

"hello"[0]      #=> "h"

"hello"[0..1]   #=> "he"

"hello"[0, 4]   #=> "hell"

"hello"[-1]     #=> "o"


# Escape characters
# Escape characters allow you to type in representations of whitespace characters and to include quotation marks inside your string without accidentally ending it. As a reminder, escape characters only work inside double quotation marks.

\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark



# The best thing to do is play around with them in irb or a REPL.

irb(main):001:0> puts "Hello \n\nHello"
Hello
Hello
=> nil


# Interpolation
# String interpolation allows you to evaluate a string that contains placeholder variables. This is a very useful and common technique, so you will likely find yourself using this often. Be sure to use double quotes so that string interpolation will work!

name = "Odin"
puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"

