# Single line comment

=begin
This is a
multiline comment
=end

# Require modules
require "date"

# Write to stdout, puts appends a newline
puts "Hello World"

# Write to stdout, print does not append a newline
print "Hey"
print " there"
print "\n"

# Declare a variable
name = "James"
puts "Hello " + name

# See type of a variable
nametype = name.class
puts "Type of name is: #{nametype}"

# String interpolation
time = DateTime.now.strftime("%H:%M")
puts "The time is: #{time}"

# Create a function
def greetings firstname,lastname
    puts "Hey there #{firstname} #{lastname}"
end
greetings("James", "Wachmann")

# Create a class
class Person
    def initialize name
        # @variable references members of the class
        @name = name
    end

    def greeting
        puts "Hey there, my name is #{@name}"
    end

    def say phrase,ending
        puts "Ok, I'll say: #{phrase}, #{ending}"
    end
end

# Instantiate a class
person = Person.new("James")

# When invoking methods, parenthesis () are optional
person.greeting
person.greeting()
person.say("whazzup??", "lol")
person.say "whazzup??", "lol"

# List methods on a class (just direct methods, "false" excludes ancestors)
puts "Methods on Person: " + Person.instance_methods(false).to_s

# Function/method parameters can have default values
def foo (x = "bar")
    puts x
end
foo
foo("baaa")

# If, else if, else statements
def conditional flag
    if flag == 1
        puts "If clause"
    elsif flag == 2
        puts "Else if clause"
    else
        puts "Else clause"
    end    
end
conditional(1)
conditional(2)
conditional(3)

# Arrays
names = ["Homer", "Marge", "Bart", "Lisa", "Maggie"]

# Foreach statements
puts "\nThe Simpsons: "
names.each do |name|
    puts name
end
puts ""

# Ruby has lambdas (anonymous functions)
f1 = -> (input) { 
    puts input 
}
f1.("Lambda function")

# Data types
puts "Data types: "
types = [ 
    1,              # integers
    2.0,            # floats
    "Strings",      # strings
    true,           # booleans
    :sym,           # symbols
    [],             #arrays
    -> (input) {},  # functions (proc)
]
types.each do |value|
    puts value.class
end
puts ""

# Naming conventions: https://gist.github.com/iangreenleaf/b206d09c587e8fc6399e#:~:text=General%20Ruby%20conventions,Class%20names%20are%20CamelCase%20.
# Class names are CamelCase
# Methods and variables are snake_case

# Semi-colons aren't required but you can use them to run multiple commands on one line
print "First command"; print " Second command"; puts " Third command"

# Truthy and falsey values
falsey1 = false
falsey2 = nil
if !falsey1 && !falsey2
    puts "Falsey values confirmed"
end
# All other values are true, including
truthy1 = true
truthy2 = "false"
truthy3 = ""
truthy4 = 0
if truthy1 && truthy2 && truthy3 && truthy4
    puts "Truthy values confirmed"
end
