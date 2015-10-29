def bubble_sort(unsorted)
  until (unsorted.each_cons(2).all? { |a, b| (a <=> b) <= 0}) == true
    for i in 0..unsorted.length - 2
	  if (unsorted[i+1] < unsorted[i])
        unsorted[i], unsorted[i + 1] = unsorted[i + 1], unsorted[i]
      end
    end
  end
    return unsorted
end

unsorted = [5,4,7,8,1,15]
p bubble_sort(unsorted)