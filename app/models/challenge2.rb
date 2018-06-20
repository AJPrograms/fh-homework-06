class Challenge2
  def self.sum_to_0(array)
    # your implementation goes here
    # list = []
    # combos_of_3 = array.combination(3).find { |a, b, c| a + b + c == 0 }

    # create empty list
    list = []
    
    # generate combinations
    combos_of_3 = array.combination(3)

    # find combinations that are equal to zero
    combos_of_3.each do | combo_array |
      list << combo_array if combo_array.sum == 0
    end
    

    list
  end
end
