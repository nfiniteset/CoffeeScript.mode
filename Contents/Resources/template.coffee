### Comments ###

# A singe line comment should be colorized as a comment

###
A multi-line comment should be colorized as a comment
###

variable # A comment trailing code should be colorized as a comment


### OPERATORS ###

a = 30 + 70
s = 62 - 10
m = 5 * 5
d = 10 / NaN

### STRINGS ###

theFirstString = 'is in single quotes'
thenThisString = "is in double quotes
 and can span multiple lines"
heredocStrings = """
                 are
                 rather #{"awesome"}.
                 """

#-- Meh...
interpolatedStrings = "contain code-colored #{ Inter.pol() + "ation, #{"but currently only when whitespace-padded"}" }..."

### FUNCTIONS ###

withoutArguments = -> "in-line"
withoutArguments = =>
  "indented"
withArguments = (a, b) ->
  (f > "indented")

#-- Meh... (again with the whitespace-padding (end only))----v
defaultArg = (u, ments, are='nice' in ['colors'] or not true? , man) ->
  "...but the function definition's RPAREN (before the arrow) isn't, and
  it fails with more complex things, which is a #{not are} shame"

#-- Fail
the = (second) -> (inline > "function is mean") and ((captures)=>"the first LPAREN too greedily")()

#-- Fail with foldable block
foo 'bar', ->
  "baz"


### VARIABLES ###

Class.attribute =
  property: yes
  property: yes

### REGULAR EXPRESSION ###
r = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/g


### EMBEDDED JAVASCRIPT ###

apple = `function(){
  apple = function(){
    this.family = "Granny Smith";
    this.peel = function(){
      // Peel this apple.
      3 + 4 == 10
      5 > 9
    }
  }
  
  return Apple.new();
}`  

#-- This was left from Sean Durham's work
  
# Assignment:
number   = 42
opposite = true

# Conditions:
number = -42 if opposite

# Arrays:
list = [1, 2, 3, 4, 5]

# Objects:
math =
  root:   Math.sqrt
  square: square
  cube:   (x) -> x * square x

# Splats:
race = (winner, runners...) ->
  print winner, runners

# Existence:
alert "I knew it!" if elvis?

# Array comprehensions:
cubes = (Math.cube num for num in list) 

