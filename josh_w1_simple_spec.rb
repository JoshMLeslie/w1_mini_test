# SIMPLE SPEC
# real simple
# run in terminal with ruby josh_w1_simple_spec.rb
require_relative 'josh_w1_practice'


tothree = [1,2,3]

100_rand_nums = []
100.times {rand_nums << rand(100000)}
100_sorted = 100_rand_nums.uniq.sort
sample = 100_sorted.sample



puts "# # # ENUMS # # #"

puts "# MY_EACH #"
result = []
tothree.my_each { |el| result << el }
puts tothree == result

result = []
tothree.my_each {|el| result += [el] }
puts tothree + tothree == result

puts "# MY_MAP #"

puts tothree.my_map {|el| el + 1} == [2,3,4]
puts tothree.my_map {|el| el.to_s} == tothree.map(&:to_s)

puts "# MY_REDUCE #"

puts tothree.my_reduce{|acc, el| acc + el} == 6
puts tothree.my_reduce(1) {|acc, el| acc + el } == 7

puts "# MY_ZIP #"
puts tothree.my_zip(tothree,tothree) == [[1,1,1],[2,2,2],[3,3,3]]

puts "# MY_COUNTER #"

puts (tothree + tothree + tothree).my_counter == {one: 3, two: 3, three: 3}



puts "# # # RECURSE # # #"
puts "build these methods with only recursion"

puts "sum_nums_rec"
puts sum_nums_rec(tothree) == 6
puts tothree.sum_nums_rec == 6

puts "factorials_rec"
puts factorials_rec(0) == 1
puts factorials_rec(5) == 120


puts "n_factorials_rec"
puts n_factorials_rec(5) == [1,1,2,6,24]
puts n_factorials_rec(10) == [1,1,2,6,24,120,720,5040,40320,362880,3628800]


puts "my_reverse"
puts my_reverse("hello") == "olleh"
puts self.my_reverse("cat? what cat?") == "?tac tahw ?tac"

puts "gamma_function"
puts gamma_function(5) == 24
puts gamma_function(10) == 362880

puts "i_scream"
favorites = ["Cheesecake Sunrise", "Cinnamonsugar Lightning", "Blue Raspberry from the Blue Lagoon", "Red Hot Red Hots", "Strawberry"]
puts i_scream("Cherry Melon",favorites) == false
puts ("Strawberry").i_scream(favorites) == true


puts "# DEEP_DUP #"
arr = [1, [2], [3, [4]]]
deep_arr = arr.deep_dup
deep_arr << [1]
puts arr == [1, [2], [3, [4]]] && deep_arr == [1, [2], [3, [4]], 1]

puts "bsearch"
puts bsearch(arr,3) == 2


puts bsearch(100_sorted, sample) == 100_sorted.index(sample)
# def bsearch(arr, num)
#   # looking for arr.index(num)
#   mid_i = arr.count/2
#   mid_val = arr[mid_i]
#
#   if arr.empty? || arr.last < num
#     return nil
#   elsif num == mid_val
#     return mid_i
#   elsif num < mid_val # num is to the left of midval
#     bsearch(arr[0...mid_i], num)
#   elsif num > mid_val # num is to the right of midval
#     bsearch(arr[mid_i..-1], num) + mid_i
#   else
#     return nil
#   end
# end

puts "quicksort"
puts "I can't actually recall when this was shown"
puts "can also be called pivot sort"

puts quicksort(100_sorted.shuffle,100_sorted.first,100_sorted.last)

# via: https://medium.com/@andrewsouthard1/quicksort-implementation-in-ruby-92de12470efd
# def quicksort(arr, first, last) # arr, first_index, last_index => arbitrary
#   if first < last
#     p_index = partition(arr, first, last)
#     quicksort(arr, first, p_index - 1)
#     quicksort(arr, p_index + 1, last)
#   end
#
#   arr
# end
#
# def partition(arr, first, last)
#   # first select one element from the list, can be any element.
#   # rearrange the list so all elements less than pivot are left of it, elements greater than pivot are right of it.
#   pivot = arr[last]
#   p_index = first
#
#   i = first
#   while i < last
#     if arr[i] <= pivot
#       temp = arr[i]           # capture arr[i]
#       arr[i] = arr[p_index]   # change arr[i] to arr[pivot_i]
#       arr[p_index] = temp     # change arr[pivot_i] to arr[i] initial value
#       p_index += 1            # incremement pivot_i
#     end

#     i += 1
#   end

#   temp = arr[p_index]         # do all that (once more).
#   arr[p_index] = pivot
#   arr[last] = temp
#   return p_index
# end



puts "merge_sort"
merge_sort([1,4,2,36,18,20]) == [1, 2, 4, 18, 20, 36]
merge_sort(100_rand_nums) == 100_rand_nums.uniq.sort

# def merge_sort(arr)
#   # returns an array of uniq sorted elements. Seems like a quirk.
#
#   # Basecase: arr becomes a single chunk => [10]
#   return arr if arr.length <= 1
#
#   # find the middle index of the passed array, assuming length > 1
#   mid_index = arr.length / 2
#
#   # left side of the array keeps getting reduced until individual units
#   p left = merge_sort(arr[0...mid_index]) # <= note ...
#
#   # right side of the array   ""   ""
#   p right = merge_sort(arr[mid_index..-1])
#
#   # merge the left and right side single digits (as you've hit the base by now)
#   # push flipped / merged digits up through stacks
#   merge_helper(left,right)
# end
#
# def merge_helper(left,right)
#   if left.nil? || left.empty?
#     return right
#   elsif right.nil? || right.empty?
#     return left
#   elsif left.first < right.first
#     [left.first] + merge_helper(left[1..-1],right)
#   elsif left.first > right.first
#     [right.first] + merge_helper(left,right[1..-1])
#   end
# end
