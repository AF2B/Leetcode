(ns clojure.412
  "Leetcode: 412
   Name: Fizz Buzz" 
  (:require [clojure.test :refer [deftest is run-tests]]))

(defn fizz-buzz [n]
  {:pre [(and (integer? n) (<= 1 n (Math/pow 10 4)))]}
  (loop [vector-n (range 1 (inc n))
         result []]
    (if (empty? vector-n)
      result
      (let [current-num (first vector-n)
            next-vector (rest vector-n)
            fizz-buzz-result (cond
                               (and (zero? (mod current-num 3))
                                    (zero? (mod current-num 5))) "FizzBuzz"
                               (zero? (mod current-num 3)) "Fizz"
                               (zero? (mod current-num 5)) "Buzz"
                               :else (str current-num))]
        (recur next-vector (conj result fizz-buzz-result))))))

(deftest test-fizz-buzz
  (is (= (fizz-buzz 1) ["1"]))
  (is (= (fizz-buzz 3) ["1" "2" "Fizz"]))
  (is (= (fizz-buzz 5) ["1" "2" "Fizz" "4" "Buzz"]))
  (is (= (fizz-buzz 15) ["1" "2" "Fizz" "4" "Buzz" "Fizz" "7" "8" "Fizz" "Buzz" "11" "Fizz" "13" "14" "FizzBuzz"]))
  (is (thrown? AssertionError (fizz-buzz 10001)))
  (is (thrown? AssertionError (fizz-buzz 0)))
  (is (thrown? AssertionError (fizz-buzz -1))))

(run-tests)