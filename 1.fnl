(local fun (require :fun))

(local multiples {})
(local fives (icollect [_it x (fun.range (math.floor (/ 999 5)))] (* 5 x)))
(each [_it x (fun.range (math.floor (/ 999 5)))] (table.insert multiples (* 5 x)))
(each [_it x (fun.range (math.floor (/ 999 3)))] (if (not=
                                                            (% (* 3 x) 5)
                                                            0)
                                                      (table.insert multiples (* 3 x))))
(local sum (fun.reduce (lambda [v x] (+ v x))
                       0 multiples))
(print sum)
;; better solution idea (not mine). make a range of 999 and then filter with (fn (x) (or (= 0 (math.modf x 3)) (= 0 (math.modf x 5))))
