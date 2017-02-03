class Bottles
   def song
     verses(99, 0)
   end
 
   def verses(hi, lo)
     hi.downto(lo).map {|n| verse(n) }.join("\n")
   end
 
  def verse(n)
    "#{n == 0 ? 'No more' : n} bottle#{'s' if n != 1}" +
    " of beer on the wall, " +
    "#{n == 0 ? 'no more' : n} bottle#{'s' if n != 1} of beer.\n" +
    "#{n > 0  ? "Take #{n > 1 ? 'one' : 'it'} down and pass it around"
              : "Go to the store and buy some more"}, " +
    "#{n-1 < 0 ? 99 : n-1 == 0 ? 'no more' : n-1} bottle#{'s' if n-1 != 1}"+
    " of beer on the wall.\n"
  end
end


# print Bottles.new.song



# good: brevity
# problems: inconsistency of coding style (ternaries), duplicated logic 


# Value v/s cost:
# 1. How difficult was it to write?
# 2. How hard is it to understand?
# 3. How expensive will it be to change?

# What are the relevant domain questions?
# 1. How many verse variants are there?
# 2. Which verses are most alike? In what way?
# 3. Which verses are most different, and in what way?
# 4. What is the rule to determine which verse comes next?
