# To create programs that are user friendly and interactive, you’ll need to know how to output data to a screen and how to get input from a user. 

# Output Commands
# To output information, such as into your irb or REPL environment or into the command line, we can use the print command. To better show the differences between what Ruby is printing to the terminal and returning, the examples here use the full irb syntax, which is exactly what you’d see if you typed these commands into your own terminal irb session.

irb(main):001:0> print "Learning to code is FUN!"
Learning to code is FUN!=> nil

irb(main):002:0> print "1234"
1234=> nil


# We can also use the puts command:

irb(main):001:0> puts "Learning to code is cool!!"
Learning to code is cool!!
=> nil

irb(main):002:0> puts "Hey, I want 2 key lime pies."
Hey, I want 2 key lime pies.
=> nil

irb(main):003:0> x = "My name is ALEX! :)"
=> "My name is ALEX! :)"

irb(main):004:0> puts x
My name is ALEX! :)
=> nil

# As you can see, the puts and print commands are quite similar, but you should have already noticed the small difference between the two: puts appends a new line to the argument passed in, whereas print keeps things all on one line. A very important thing to notice for both commands is that after printing whatever argument they are passed, puts and print both return nil.



# To highlight the difference between puts and print, we’re going to pull out a piece of rarely used Ruby syntax: the semicolon. In short, semicolons are never required in Ruby, but they allow you to run multiple Ruby commands all on one line. This type of code golf is not generally recommended, but it’s helpful for this example. In a REPL, such as replit.com, the two statements can be written on separate lines without the semicolon and still produce the desired output. However, irb can read only one statement at a time, making the semicolons necessary for this code to work as intended.
irb(main):001:0> print "Hello World"; print "I love drinking coffee"
Hello WorldI love drinking coffee=> nil

irb(main):002:0> puts "Hello World"; puts "I love drinking coffee"
Hello World
I love drinking coffee
=> nil



# Input Commands
# To accept input from a user, we can use the gets command. When we use gets, program execution will stop and wait for user input. After the user presses Enter, the program will continue its execution.

# Let’s give this a go. Open irb, type gets, and then type The Odin Project. You should see something like the following:

irb(main):001:0> gets
The Odin Project
=> "The Odin Project\n"
# You’ll notice that, unlike puts and print, gets actually returns the user input instead of returning nil. This means that the input can be assigned to a variable for you to then use and manipulate and twist and turn and spit back out.
# "\n" is an escape character that represents a new line. The gets command always returns a new line at the end of the input. This command often makes use of a “separator” to read streams and multi-line files, but that’s beyond the scope of this beginner lesson. For now, it’s helpful to know that #chomp is a method commonly used to trim separators.

irb(main):001:0> new_string = gets.chomp
This is a sentence.
=> "This is a sentence."

irb(main):002:0> puts new_string
This is a sentence.
=> nil

