(ns clojure.12
  "Leetcode: 12\n
   Name: Integer to Roman\n"
  (:require [clojure.test :refer [deftest is run-tests]]))

(def roman-symbols
  "A mapping of Roman numeral symbols to their corresponding integer values."
  [{:symbol "M" :value 1000}
   {:symbol "CM" :value 900}
   {:symbol "D" :value 500}
   {:symbol "CD" :value 400}
   {:symbol "C" :value 100}
   {:symbol "XC" :value 90}
   {:symbol "L" :value 50}
   {:symbol "XL" :value 40}
   {:symbol "X" :value 10}
   {:symbol "IX" :value 9}
   {:symbol "V" :value 5}
   {:symbol "IV" :value 4}
   {:symbol "I" :value 1}])

(defn int-to-roman
  "Convert an integer to its Roman numeral representation.\n
  Args:
    num - An integer value to convert (1 <= num <= 3999).
    
  Returns:
    A string representing the Roman numeral equivalent of the integer."
  [num]
  (loop [number num
         result ""]
    (if (zero? number)
      result
      (let [next-symbol (first (filter #(<= (:value %) number) roman-symbols))]
        (recur (- number (:value next-symbol))
               (str result (:symbol next-symbol)))))))

(deftest test-int-to-roman
  (is (= (int-to-roman 1) "I"))
  (is (= (int-to-roman 4) "IV"))
  (is (= (int-to-roman 9) "IX"))
  (is (= (int-to-roman 58) "LVIII"))
  (is (= (int-to-roman 1994) "MCMXCIV"))
  (is (= (int-to-roman 3999) "MMMCMXCIX")))

(run-tests)
