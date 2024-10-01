(ns clojure.12
  "Leetcode: 12\n
   Name: Integer to Roman\n"
  (:require [clojure.test :refer [deftest is run-tests]]))

(defonce roman-symbols 
  [["M" 1000] ["CM" 900] ["D" 500] ["CD" 400] ["C" 100] ["XC" 90]
   ["L" 50] ["XL" 40] ["X" 10] ["IX" 9] ["V" 5] ["IV" 4] ["I" 1]])

(defn int-to-roman 
  "Convert an integer to its Roman numeral representation.
    
    Args:
      num - An integer value to convert (1 <= num <= 3999).
    
    Returns:
      A string representing the Roman numeral equivalent of the integer.
    
    Examples:
      (int-to-roman 4)    ;=> \"IV\"
      (int-to-roman 9)    ;=> \"IX\"
      (int-to-roman 1994) ;=> \"MCMXCIV\""
  [num]
  {:pre [(and (integer? num) (<= 1 num 3999))]}
  (loop [number num
         result ""]
    (if (zero? number)
      result
      (let [[symbol value] (first (filter #(<= (second %) number) roman-symbols))]
        (recur (- number value)
               (str result symbol))))))

(deftest test-int-to-roman
  (is (= (int-to-roman 1) "I"))
  (is (= (int-to-roman 4) "IV"))
  (is (= (int-to-roman 9) "IX"))
  (is (= (int-to-roman 58) "LVIII"))
  (is (= (int-to-roman 1994) "MCMXCIV"))
  (is (= (int-to-roman 3999) "MMMCMXCIX"))
  (is (= (int-to-roman 1) "I"))
  (is (= (int-to-roman 3999) "MMMCMXCIX"))
  (is (thrown? AssertionError (int-to-roman 0)))
  (is (thrown? AssertionError (int-to-roman 4000))))

(run-tests)
