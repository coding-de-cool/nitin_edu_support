module Algorithms
  class Searching

    attr_reader :array, :number

    def initialize(array, number)
      @array = array
      @number = number
    end

    # Worst case time complexity is O(n)
    def linear_search
      for i in 0..array.length-1
        if array[i] == number
          return i
        end
      end
      return -1 #element not found
    end

    # Iterative Binary Search
    # Best Case Time Complexity = O(1), if number is at middle position
    # Worst Case Time Complexity = O(lg(n))
    # Space Complexity O(1)
    # return index of array if number founds
    def binary_search
      low = 0
      high = array.length - 1
      while low <= high do
        middle = (low + high)/2
        if number < array[middle]
          high = middle - 1
        elsif number > array[middle]
          low = middle + 1
        else
          return middle
        end
      end
      return -1 # Element not found
    end

    # prefer iterative binary search as recursive call requires stack space
    # Space Complexity O(lg(n)) => Stack space required
    def recursive_binary_search(low=0, high=array.length - 1)
      middle = (low + high) / 2
      if low <= high
        if number == array[middle]
          return middle
        elsif number < array[middle]
          recursive_binary_search(low, middle - 1)
        else
          recursive_binary_search(middle + 1, high)
        end
      else
        return -1 # Element not found
      end
    end

  end
end