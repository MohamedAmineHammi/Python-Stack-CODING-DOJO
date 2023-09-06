# 1. print "Hello World"
print( "Hello World" )
# 2. print "Hello Amine!" with the name in a variable
name = "Amine"
print( "Hello", name,"!" )	# with a comma
print( "Hello " + name + "!" )	# with a +
# 3. print "Hello 30!" with the number in a variable
name = 30
print("Hello" , 30, "!" )	# with a comma
print( "Hello " + str(30) + "!")	# with a +	-- this one should give us an error!
# 4. print "I love to eat sushi and pizza." with the foods in variables
fave_food1 = "riz"
fave_food2 = "pasta"
print( "I love to eat {} and {}.".format(fave_food1,fave_food2) ) # with .format()
print( f"I love to eat {fave_food1} and {fave_food2}." ) # with an f string