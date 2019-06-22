class MarkSolution
  def reconcileHelper(arr1, arr2)
      not_in_arr2 = []
      not_in_arr1 = []

      # things to note
      # arrays may not be the same length

      # base solution, not fast but i think it works?
      # loop over arr1,
      arr1.each do |num|
          # if not in arr2, shovel into not_in_arr2
          not_in_arr2 << num unless arr2.include?(num)
      end


      # loop over arr2
      arr2.each do |num|
          # if not in arr1, shovel into not_in_arr1
          not_in_arr1 << num unless arr1.include?(num)
      end


      # puts "Numbers in array 1 that aren't in array 2:"
      # puts not_in_arr2.join(" ")
      # puts "Number in array 2 that aren't in array 1:"
      # puts not_in_arr1.join(" ")
  end
end
