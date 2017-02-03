 class Bottles
 
   def song
     verses(99, 0)
   end
 
   def verses(starting, ending)
     starting.downto(ending).map {|i| verse(i)}.join("\n")
   end
 
   def verse(number)
     case number
     when 0
       "No more bottles of beer on the wall, " +
       "no more bottles of beer.\n" +
       "Go to the store and buy some more, " +
       "99 bottles of beer on the wall.\n"
     when 1
       "1 bottle of beer on the wall, " +
       "1 bottle of beer.\n" +
       "Take it down and pass it around, " +
       "no more bottles of beer on the wall.\n"
     when 2
       "2 bottles of beer on the wall, " +
       "2 bottles of beer.\n" +
       "Take one down and pass it around, " +
       "1 bottle of beer on the wall.\n"
     else
       "#{number} bottles of beer on the wall, " +
       "#{number} bottles of beer.\n" +
       "Take one down and pass it around, " +
       "#{number-1} bottles of beer on the wall.\n"
     end
   end
 
 end

# print Bottles.new.song



# good: 
# problems: 


# Value v/s cost:
# 1. How difficult was it to write?
# 2. How hard is it to understand?
# 3. How expensive will it be to change?

# What are the relevant domain questions?
# 1. How many verse variants are there?
# 2. Which verses are most alike? In what way?
# 3. Which verses are most different, and in what way?
# 4. What is the rule to determine which verse comes next?
