(ns 6
 (:require [clojure.test :refer [deftest testing is run-tests]]))

(defn read-input 
  []
  (slurp "./clojure/input.txt"))

(defn convert 
  [num-rows]
  (let [input (read-input)
        n (count input)
        result (vec (repeat num-rows ""))]
    (loop [i 0
           row 0
           direction 1
           result result]
      (if (= i n)
        (apply str result)
        (let [updated-result (update result row str (nth input i))
              new-row (if (or (= row 0) (= row (dec num-rows)))
                        (+ row direction)
                        (+ row direction))]
          (recur (inc i)
                 new-row
                 (if (or (= new-row 0) (= new-row (dec num-rows)))
                   (- direction)
                   direction)
                 updated-result))))))

(deftest zigzag-problem
  (testing "should return the zigzag string"
    (is (= (convert 3) "PAYPALISHIRING"))
    (is (= (convert 4) "PINALSIGYAHRPI"))
    (is (= (convert 1) "A"))))
