
def prime?(number)
  # Returns false for 1, 0, and all negative numbers
  return false if number <= 1
  # Create an array of the range of numbers from 2 to half the number
  factors = (2..number/2).to_a
  # Iterate through each potential factor in the array and check if there's a remainder of 0
  factors.each do |factor|
    if number % factor == 0
      # If there's no remainder, the number isn't a prime and this returns false
      return false
    end
  end
  # Otherwise, after iterating, if no numbers have a remainder of 0 after being divided, the number is prime
  return true
end
