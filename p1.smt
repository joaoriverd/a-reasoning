;Practical Assignment - Automated Reasoning 2IMF25
;Problem 1
(benchmark test.smt
:logic QF_UFLIA
:extrafuns 
((N1 Int) (N2 Int) (N3 Int) (N4 Int) (N5 Int) (N6 Int)
 (P1 Int) (P2 Int) (P3 Int) (P4 Int) (P5 Int) (P6 Int)
 (S1 Int) (S2 Int) (S3 Int) (S4 Int) (S5 Int) (S6 Int)
 (C1 Int) (C2 Int) (C3 Int) (C4 Int) (C5 Int) (C6 Int)
 (D1 Int) (D2 Int) (D3 Int) (D4 Int) (D5 Int) (D6 Int)
 (Total_P Int)
)
:formula 
(and
 ;Avoid negative values
 (>= N1 0) (>= N2 0) (>= N3 0) (>= N4 0) (>= N5 0) (>= N6 0)
 (>= P1 0) (>= P2 0) (>= P3 0) (>= P4 0) (>= P5 0) (>= P6 0)
 (>= S1 0) (>= S2 0) (>= S3 0) (>= S4 0) (>= S5 0) (>= S6 0)
 (>= C1 0) (>= C2 0) (>= C3 0) (>= C4 0) (>= C5 0) (>= C6 0)
 (>= D1 0) (>= D2 0) (>= D3 0) (>= D4 0) (>= D5 0) (>= D6 0)
 
 ;Define the total number of elements
 (= (+ N1 N2 N3 N4 N5 N6) 4)
 (= (+ P1 P2 P3 P4 P5 P6) Total_P)
 (= (+ S1 S2 S3 S4 S5 S6) 8)
 (= (+ C1 C2 C3 C4 C5 C6) 10)
 (= (+ D1 D2 D3 D4 D5 D6) 5)
 
 ;The truck has a masimum capacity of 7800 Kg
 (<= (+ (* 700 N1) (* 800 P1) (* 1000 S1) (* 1500 C1) (* 100 D1)) 7800)
 (<= (+ (* 700 N2) (* 800 P2) (* 1000 S2) (* 1500 C2) (* 100 D2)) 7800)
 (<= (+ (* 700 N3) (* 800 P3) (* 1000 S3) (* 1500 C3) (* 100 D3)) 7800)
 (<= (+ (* 700 N4) (* 800 P4) (* 1000 S4) (* 1500 C4) (* 100 D4)) 7800)
 (<= (+ (* 700 N5) (* 800 P5) (* 1000 S5) (* 1500 C5) (* 100 D5)) 7800)
 (<= (+ (* 700 N6) (* 800 P6) (* 1000 S6) (* 1500 C6) (* 100 D6)) 7800)
 
 ;P and C are not allowed to be put in the same truck
 (or (= P1 0) (= C1 0))
 (or (= P2 0) (= C2 0))
 (or (= P3 0) (= C3 0))
 (or (= P4 0) (= C4 0))
 (or (= P5 0) (= C5 0))
 (or (= P6 0) (= C6 0))
 
 ;Only two of the six trucks should have S.
 (= S1 0)
 (= S2 0)
 (= S3 0)
 (= S4 0)
 
 ;No two elements of D may be in the same truck
 (< D1 2)
 (< D2 2)
 (< D3 2)
 (< D4 2)
 (< D5 2)
 (< D6 2)
 
 ;(= Total_P 24)
))









