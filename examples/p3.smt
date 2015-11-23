;Practical Assignment - Automated Reasoning 2IMF25
;Problem 3
(benchmark test.smt
:logic QF_UFLIA
:extrafuns 
((S1 Int) (S2 Int) (S3 Int) (S4 Int)  (S5 Int)  (S6 Int)
 (S7 Int) (S8 Int) (S9 Int) (S10 Int) (S11 Int) (S12 Int)
 (F1 Int) (F2 Int) (F3 Int) (F4 Int)  (F5 Int)  (F6 Int)
 (F7 Int) (F8 Int) (F9 Int) (F10 Int) (F11 Int) (F12 Int)
 (Sum Int)
)
:formula 
(and
 ;Starting jobs at time greater or equal of zero
 (>= S1 0) (>= S2 0) (>= S3 0) (>= S4 0)  (>= S5 0)  (>= S6 0)
 (>= S7 0) (>= S8 0) (>= S9 0) (>= S10 0) (>= S11 0) (>= S12 0)
 
 ;All jobs run without interrupt
 (= (+ S1 1) F1)
 (= (+ S2 2) F2)
 (= (+ S3 3) F3)
 (= (+ S4 4) F4)
 (= (+ S5 5) F5)
 (= (+ S6 6) F6)
 (= (+ S7 7) F7)
 (= (+ S8 8) F8)
 (= (+ S9 9) F9)
 (= (+ S10 10) F10)
 (= (+ S11 11) F11)
 (= (+ S12 12) F12)

 ;Job dependencies
 (>= S3 F1)  (>= S3 F2)
 (>= S5 F3)  (>= S5 F4)
 (>= S7 F3)  (>= S7 F4) (>= S7 F6)
 (>= S9 F5)  (>= S9 F8)
 (>= S11 F10)
 (>= S12 F9) (>= S12 F11)
 
 ;Jobs 5,7 and 10 connot execute in parallel
 (or (not (<= S5 S7))  (not (< S7 F5)))
 (or (not (<= S5 S10)) (not (< S10 F5)))
 (or (not (<= S7 S5))  (not (< S5 F7)))
 (or (not (<= S7 S10)) (not (< S10 F7)))
 (or (not (<= S10 S5)) (not (< S5 F10)))
 (or (not (<= S10 S7)) (not (< S7 F10)))
 
 ;Sum of starting times
 ;(= (+ S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12) Sum)

 (= F12 36)
 ;(= Sum 76)
))









