# Enter your procedural solution here!
def largest_prime_factor(num)

  array = findfactors(num).sort.reverse
  array.each  {|x| if prime(x) then return x end} 

end

def prime(num)
  Math.sqrt(num).to_i.downto(2) do |x|
    if num % (x) == 0 
      return false
    end
  end
  return true
end


def findfactors(num)

  factors = []

  Math.sqrt(num).ceil.downto(4) do |x|
    if num % (x-1) == 0 
      factors << (x-1)
    end
  end
  factors
end
