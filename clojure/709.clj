(ns clojure.709
  (:require [clojure.string :as str]
            [clojure.test :refer [deftest is run-tests]]))

(defn to-lower-case [s]
  (str/lower-case s))

(def resultado (to-lower-case "HELLO"))

(println resultado)

(deftest test-to-lower-case
  (is (= "hello" (to-lower-case "HELLO")))
  (is (= "world" (to-lower-case "world")))
  (is (= "clojure" (to-lower-case "CloJure")))
  (is (= "" (to-lower-case "")))
  (is (= "123!@#" (to-lower-case "123!@#"))))

(run-tests)
