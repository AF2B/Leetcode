require 'test/unit'

#!NOT RECOMENDED
# Because of the slice! method changes the original string, loosing performance and
# create an new string in memory everytime it's called.
# def merge_alternately(word1, word2)
#   result = ""

#   while word1.length > 0 || word2.length > 0
#     result += word1.slice!(0) if word1.length > 0
#     result += word2.slice!(0) if word2.length > 0
#   end

#   result
# end

def merge_alternately(word1, word2)
  result = ""
  i = 0

  while i < word1.length || i < word2.length
    result << word1[i] if i < word1.length
    result << word2[i] if i < word2.length
    i += 1
  end

  result
end

class TestMergeAlternately < Test::Unit::TestCase
  def test_merge_alternately
    assert_equal("apbqcr", merge_alternately("abc", "pqr"))
    assert_equal("apbqrs", merge_alternately("ab", "pqrs"))
    assert_equal("apbqcd", merge_alternately("abcd", "pq"))
    assert_equal("", merge_alternately("", ""))
    assert_equal("abc", merge_alternately("abc", ""))
    assert_equal("apbqrs", merge_alternately("ab", "pqrs"))
    # assert_equal("a1#*c2", merge_alternately("a#c", "1*2"))
    # assert_equal("a c b", merge_alternately("a b", " c"))
  end
end
