

# PYTHON NOTES:

#---- operators ----

+	#add
-	#sub
*	#mult, automatic float conversion
/	#division always return flat
//	#division with floor
%	#modulo
**	#power

** #has higher precedence than - so:
-3**2  	= -9
(-3)**2 = 9


_ #	the value of the last evaluated exprassion, use it as READ ONLY

# comparison operators

a in v
a not in v
a is b
a is not b
a < b
a <= v
a > b
a >= b
a == b
a and b
a or b

# in python assignment could not happen inside expressions


#---- string -----

print(r'C:\some\name')		'r' to print without interpreting backslashes as escapes etc

# multiple line string literal
print("""\
Usage: thingy [OPTIONS]
     -h                        Display this usage message
     -H hostname               Hostname to connect to
""")

# words can be indexed as arrays

----- data structures --------

# array can be indexed and the indexed
# negative indexes start from the array back

# LIST
# this is a list, it can contain multiple different types
squares = [1, 4, 9, 16, 25]

# you can concatenate lists: 
squares + [36, 49, 64, 81, 100]

# lists are mutable and support editing
squares.append(35)
squares[5] = 36
squares[2:3] = [ 4, 9 ]
squares[2:3] = []   # this will delete the elements, reducing the size
squares[:] = []		# this will clear the list

# multidimensional lists
>>> a = ['a', 'b', 'c']
>>> n = [1, 2, 3]
>>> x = [a, n]
>>> x
[['a', 'b', 'c'], [1, 2, 3]]


# --------- CONDITIONS -------------
# In Python, like in C, any non-zero integer value is true; zero is false. The condition may also be a string or list value, in fact any sequence; anything with a non-zero length is true, empty sequences are false. 


-#---------- BASIC CODING -----------

# this is to iterate on a list
for i in range(len(a)):
...     print(i, a[i])

# range() gives you an iterable, with most of its feature is like this
range(0, 10, 3) 		# start, end exclusive, step
   0, 3, 6, 9
# an iterable is not a list, the list() function gives you a list from an iterable
>>> list(range(5))
[0, 1, 2, 3, 4]


# the for loop can have a `else` statement, that is executed at the end of the list, but can be breaked by `break`
# long story short: and a loop’s `else` clause runs when no `break` occurs.
>>> for n in range(2, 10):
...     for x in range(2, n):
...         if n % x == 0:
...             print(n, 'equals', x, '*', n//x)
...             break
...     else:
...         # loop fell through without finding a factor
...         print(n, 'is a prime number')
...
2 is a prime number
3 is a prime number
4 equals 2 * 2
5 is a prime number
6 equals 2 * 3
7 is a prime number
8 equals 2 * 4
9 equals 3 * 3


# The `continue` statement, also borrowed from C, continues with the next iteration of the loop:
# The pass statement does nothing. It can be used when a statement is required syntactically but the program requires no action. Someone thought it was a good idea D= 

--------------- FUNCTIONS -------------------
>>> def fib(n):    # write Fibonacci series up to n
...     """Print a Fibonacci series up to n."""
...     a, b = 0, 1
...     while a < n:
...         print(a, end=' ')
...         a, b = b, a+b
...     print()
...
>>> # Now call the function we just defined:
... fib(2000)
0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597

The first statement of the function body can optionally be a string literal; this string literal is the function’s DOCUMENTATION string, or docstring.

# function can be assigned to variables and then called from that function variables
# calling the function name without arguments will give you info about the user defined function
# objects are passed by reference
>>> fib
<function fib at 10042ed0>
>>> f = fib
>>> f(100)
0 1 1 2 3 5 8 13 21 34 55 89

# example returning a list : (default return value of a void function is the built in variable `None`)
>>> def fib2(n): # return Fibonacci series up to n
...     """Return a list containing the Fibonacci series up to n."""
...     result = []
...     a, b = 0, 1
...     while a < n:
...         result.append(a)    # see below
...         a, b = b, a+b
...     return result
...
>>> f100 = fib2(100)    # call it
>>> f100                # write the result
[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

# you can set default argument value in a function like in c function definition
def ask_ok(prompt, retries=4, complaint='Yes or no, please!')

# you can use also keywords arguments :
def parrot(voltage, state='a stiff', action='voom', type='Norwegian Blue'):
# then you can call this function in those ways 
	parrot(1000)                                          # 1 positional argument
	parrot(voltage=1000)                                  # 1 keyword argument
	parrot(voltage=1000000, action='VOOOOOM')             # 2 keyword arguments
	parrot(action='VOOOOOM', voltage=1000000)             # 2 keyword arguments
	parrot('a million', 'bereft of life', 'jump')         # 3 positional arguments
	parrot('a thousand', state='pushing up the daisies')  # 1 positional, 1 keyword
# but NOT IN THOSE WAYS:
	parrot()                     # required argument missing
	parrot(voltage=5.0, 'dead')  # non-keyword argument after a keyword argument
	parrot(110, voltage=220)     # duplicate value for the same argument
	parrot(actor='John Cleese')  # unknown keyword argument

# you can give as argument a list of strings, or a dictionary of keyword=strings
def functionName( arg0, *arguments, **keywords ) :
# arguments is a list of strings
# keywords is a dictionary

# the least frequently used option is to specify that a function can be called with an arbitrary number of arguments.
def write_multiple_items(file, separator, *args):
    file.write(separator.join(args))

# you can unpack a list or tuple to pass its values as separate argument to a function
# you use the * operator, like *tuple
>>> list(range(3, 6))            # normal call with separate arguments
[3, 4, 5]
>>> args = [3, 6]
>>> list(range(*args))            # call with arguments unpacked from a list
[3, 4, 5]

#In the same fashion, dictionaries can deliver keyword arguments with the **-operator:
>>> d = {"voltage": "four million", "state": "bleedin' demised", "action": "VOOM"}
>>> parrot(**d)

# you can make lambda function with the `lambda` keyword, and pass them as argument
>>> pairs = [(1, 'one'), (2, 'two'), (3, 'three'), (4, 'four')]
>>> pairs.sort(key=lambda pair: pair[1])
>>> pairs
[(4, 'four'), (1, 'one'), (3, 'three'), (2, 'two')]


# ----------------CODING CONVENTIONS---------------
# separate operators like this:
a = f(1, 2) + g(3, 4).
# use camelCase for classNames and undescores for function_names() and method_names()
# use 4 real tabs

# ---------------- DATA STRUCTURES ---------------
# with lists you can use append()
# pop(i) removes and returns an element, if i is not given the last element is removed
# remove(x) removes the first occurrence of the x value SO DON'T FUCKING USE IT instead of pop()

# you can easily create vectors using list comprehension
squares = [x**2 for x in range(10)]
vec = [-4, -2, 0, 2, 4]
va = [x*2 for x in vec]
vb = [x for x in vec if x >= 0]
vc = [abs(x) for x in vec]

# also with tuples (they must be parenthesized)
>>> [(x, x**2) for x in range(6)]
[(0, 0), (1, 1), (2, 4), (3, 9), (4, 16), (5, 25)]

#also multidimensiona (assuming we already have a `matrix` list of lists)
[[row[i] for row in matrix] for i in range(4)]

# the `del` statement could be use to remove element or slices from a list
a = [-1, 1, 66.25, 333, 333, 1234.5]
del a[0]	# delete the first
del a[2:4]	# delete a slice
del a[:]	# delete all

del a 		# you can use del to delete variables

# --------------- TUPLES ------------------
# a tuple is a list of values separated by a comma
t = 12345, 54321, 'hello!'
# Tuples may be nested:
u = t, (1, 2, 3, 4, 5)
# tuples are IMMUTABLE but can contain mutable objecs,
# so assignement on tuple index is not permitted

# Tuples are immutable, and usually contain an heterogeneous sequence of elements that are accessed via unpacking (see later in this section) or indexing (or even by attribute in the case of namedtuples). Lists are mutable, and their elements are usually homogeneous and are accessed by iterating over the list.

# there are some quirks on assigning zero or 1-element tuples
empty = ()
singleton = 'hello',    # <-- note trailing comma

# unpacking the t tuple (that we created before)
x, y, z = t

# ---------------- SETS ------------------------
# sets are unordered collection with no duplicate elements
>>> basket = {'apple', 'orange', 'apple', 'pear', 'orange', 'banana'}
>>> print(basket)                      # show that duplicates have been removed
{'orange', 'banana', 'pear', 'apple'}
# you can initialize a set with set()
a = set('abracadabra')
b = set('alacazam')
# set operations
a - b 	# elements in a but not in b
a | b	# OR
a & b	# AND
a ^ b	# XOR elements in a or b but not in both, like ( a | b ) - ( a & b)

# sets comprehension is supported
a = {x for x in 'abracadabra' if x not in 'abc'}

# --------------- DICTIONARIES ----------------
# dictionaries are maps of key:value
tel = {'jack': 4098, 'sape': 4139}
tel['guido'] = 4127 # adding a key:value
'guido' in tel 		# testing appartenence

dict([('sape', 4139), ('guido', 4127), ('jack', 4098)]) # constructing from tuples

# When looping through dictionaries, the key and corresponding value can be retrieved at the same time using the items() method.
>>> knights = {'gallahad': 'the pure', 'robin': 'the brave'}
>>> for k, v in knights.items():
...     print(k, v)


# -------------- on comparing data structures ----------
# sequence objects may be compared to other objects with the same sequence type. The comparison uses lexicographical ordering: first the first two items are compared, and if they differ this determines the outcome of the comparison; if they are equal, the next two items are compared, and so on, until either sequence is exhausted.

# ----------------- LOOPING --------------------
# you can loop on multiple list at the same time using zip()
>>> questions = ['name', 'quest', 'favorite color']
>>> answers = ['lancelot', 'the holy grail', 'blue']
>>> for q, a in zip(questions, answers):
...     print('What is your {0}?  It is {1}.'.format(q, a))

# you can loop in reverse order using reversed()
>>> for i in reversed(range(1, 10, 2)):
...     print(i)

# to loop on a sorted sequence use sorted()
>>> basket = ['apple', 'orange', 'apple', 'pear', 'orange', 'banana']
>>> for f in sorted(set(basket)):
...     print(f)


# if you want to iterate on a list is better to make a copy before iterating
# using slice notations is really good for this
# PS: maybe inserting while iterating in python could be a problem
>>> words = ['cat', 'window', 'defenestrate']
>>> for w in words[:]:  # Loop over a slice copy of the entire list.
...     if len(w) > 6:
...         words.insert(0, w)
...
>>> words
['defenestrate', 'cat', 'window', 'defenestrate']

# ---------------- MODULES -------------
# you load modules (libraries) using `import`
from fibo import *
import sys

# using `dir()` you can know all the declared names

# a package is a collection of module with nested namespaces
# to make a package you have to put an __init__.py file in each folder
# the __init__.py can also be empty but must be present
# you access the module of the package with the dot notation
import sound.effects.echo 			# this way you have to use the full name
from sound.effects import echo		# this way you can just use `echo`

