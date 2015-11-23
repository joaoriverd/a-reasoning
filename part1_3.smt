(benchmark part1_3

:logic QF_ALIA

:extrafuns (
(s1 Int) (s2 Int) (s3 Int) (s4 Int) (s5 Int) (s6 Int) (s7 Int) (s8 Int) (s9 Int) (s10 Int) (s11 Int) (s12 Int)  
(d1 Int) (d2 Int) (d3 Int) (d4 Int) (d5 Int) (d6 Int) (d7 Int) (d8 Int) (d9 Int) (d10 Int) (d11 Int) (d12 Int) )

:formula (and
(>= s1 0) (>= s2 0) (>= s3 0) (>= s4 0) (>= s5 0) (>= s6 0) (>= s7 0) (>= s8 0) (>= s9 0) (>= s10 0) (>= s11 0) (= s12 24) 
(= d1 1) (= d2 2) (= d3 3) (= d4 4) (= d5 5) (= d6 6) (= d7 7) (= d8 8) (= d9 9) (= d10 10) (= d11 11) (= d12 12)

(ite (>= (+ s1 d1) (+ s2 d2))  (>= s3 (+ s1 d1))  (>= s3 (+ s2 d2 ))  )
(ite (>= (+ s3 d3) (+ s4 d4))  (>= s5 (+ s3 d3))  (>= s5 (+ s4 d4 ))  )
 
(ite (and (>= (+ s3 d3) (+ s4 d4)) (>= (+ s4 d4) (+ s6 d6))) (>= s7 (+ s3 d3) )  (>= s7 (+ s6 d6)))
(ite (and (>= (+ s3 d3) (+ s6 d6)) (>= (+ s6 d6) (+ s4 d4))) (>= s7 (+ s3 d3) )  (>= s7 (+ s4 d4) ))
(ite (and (>= (+ s4 d4) (+ s3 d3)) (>= (+ s3 d3) (+ s6 d6))) (>= s7 (+ s4 d4) )  (>= s7 (+ s6 d6) ))
(ite (and (>= (+ s4 d4) (+ s6 d6)) (>= (+ s6 d6) (+ s3 d3))) (>= s7 (+ s4 d4) )  (>= s7 (+ s3 d3) ))
(ite (and (>= (+ s6 d6) (+ s3 d3)) (>= (+ s3 d3) (+ s4 d4))) (>= s7 (+ s6 d6) )  (>= s7 (+ s4 d4) ))
(ite (and (>= (+ s6 d6) (+ s4 d4)) (>= (+ s4 d4) (+ s3 d3))) (>= s7 (+ s6 d6) )  (>= s7 (+ s3 d3) ))

(ite (>= (+ s5 d5) (+ s8 d8)) (>= s9 (+ s5 d5)) (>= s9 (+ s8 d8 )))
(>= s11 (+ s10 d10))
(ite (>= (+ s9 d9) (+ s11 d11)) (>= s12 (+ s9 d9)) (>= s12 (+ s11 d11 )))

( or
(and (>= s5 0) (>= s7 (+ s5 d5)) (>= s10 (+ s5 s7 d5 d7)) )  
(and (>= s5 0) (>= s10 (+ s5 d5)) (>= s7 (+ s5 s10 d5 d10)) ) 
(and (>= s7 0) (>= s5 (+ s7 d7)) (>= s10 (+ s5 s7 d5 d7)) ) 
(and (>= s7 0) (>= s10 (+ s7 d7)) (>= s5 (+ s10 s7 d10 d7)) ) 
(and (>= s10 0) (>= s5 (+ s10 d10)) (>= s7 (+ s5 s10 d5 d10)) ) 
(and (>= s10 0) (>= s7 (+ s10 d10)) (>= s5 (+ s10 s7 d10 d7)) ) 
)))
