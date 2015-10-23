# Enter your object-oriented solution here!
class LargestPrimeFactor

  def initialize(num)
    @num = num
  end

  def number
    array = findfactors.sort.reverse
    array.each  {|x| if prime(x) then return x end} 
  end

  def prime(num)
      Math.sqrt(num).ceil.downto(4) do |x|
        if num % (x-1) == 0 
          return false
        end
      end
    return true
  end


  def findfactors
    factors = []
    Math.sqrt(@num).ceil.downto(4) do |x|
      if @num % (x-1) == 0 
        factors << (x-1)
      end
    end
    factors
  end


end