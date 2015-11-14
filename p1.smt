(benchmark test.smt
:logic QF_UFLIA
:extrafuns ((A Int) (B Int) (C Int) (D Int))
:formula 
(and
(> (* 2 A) (+ B C))
(> (* 2 B) (+ C D))
(> (* 2 C) (* 3 D))
(> (* 3 D) (+ A C))
))
