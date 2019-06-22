require 'set'

class MarkSolution
  def reconcile_helper(arr1, arr2)
    not_in_arr1 = []
    not_in_arr2 = []

    set1 = arr1.to_set
    set2 = arr2.to_set

    arr1.each do |num|
      not_in_arr1 << num unless set2.include?(num)
    end

    arr2.each do |num|
      not_in_arr1 << num unless set1.include?(num)
    end
  end
end
