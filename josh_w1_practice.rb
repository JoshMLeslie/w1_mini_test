# # # # # # # # # # # # # #
# # # # # # # # # # # # # #
# #   # # #   # #     # # #
# #   #   #   # # #   # # #
# #           # # #   # # #
# # #   #   # #         # #
# # # # # # # # # # # # # #
# # # # # # # # # # # # # #
# #    PRACTICE EXAM    # #
# # # # # # # # # # # # # #

# is it bad I consider making that logo as downtime?
# well, too late now.
# here's a g-drive link to the work I've done this week for posterity
# https://drive.google.com/drive/folders/1AjT1Dp0ydI3-QleVGHTliU4aYKI0UUv_?usp=sharing

# # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # #  START  # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # #
# via: https://github.com/appacademy/assessment-prep#assessment-1
#
# The following is a (non-exhaustive) list of topics that may be covered:
#
#     n.b. Figure out (most) of your own arguments. Read the (simple) spec
#     n.b.2  push is to shift as pop is to unshift
#
#     Testing for these are sprinkled throughout the rest:
# =>  Arrays, Strings, Hashes
# =>  Monkey patching
#
#     Actual tests:
# =>  Enumerables
# =>  Recursion
# =>  Searches and Sorts (quicksort, bsearch, merge_sort)
#       Spoiler I've included a solution to the searches/sorts in the spec file
#
#     Not directly here but likely:
# => Building classes, etc.
#
# =>  Tips:
#      > read the description of the failing spec
#      > look at the spec code
#      > read the error message
#      > keep calm and drink more tea
#      > starting clean can be faster than fixing frankenstein code
# # # # # # # # # # # # # #

# REQUIRE # # # # # # # # #
require 'byebug'

# # # # # # # # # # # # # #

# # # ENUMS # # #

class Array
  def my_each
  end

  def my_map
  end

  def my_reduce
  end

  def my_zip
  end
end

def my_counter
end

# # # RECURSE # # #
# build these methods with only recursion

def sum_nums_rec
end

# 0! => 1
# 5! => 120
def factorials_rec
end

# n = 5 => [1, 1, 2, 6, 24]
def n_factorials_rec
end

# hello => olleh
# cat? what cat? => ?tac tahw ?tac
class String
  def my_reverse
  end
end

# n - 1 * (n-1)
# g_f(5) => 24
# g_f(10) => 362880
def gamma_function
end

# is the flavor one of your favorites?
def i_scream(flavors,favorites)
end

# # # MIXED # # #
# hint: build with both iteration and recursion

def deep_dup
end


# # # SEARCHES # # #
# Spoiler I've included a solution to these in the spec file #
def bsearch
end

def quicksort
end

def merge_sort
end

















# doc end
