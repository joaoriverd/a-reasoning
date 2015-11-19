;Practical Assignment - Automated Reasoning 2IMF25
;Problem 1
(benchmark test.smt
:logic QF_UFLIA
:extrafuns 
((a11 Int) (a21 Int) (a31 Int) (a41 Int) (a51 Int) (a61 Int) (a71 Int)
 (a12 Int) (a22 Int) (a32 Int) (a42 Int) (a52 Int) (a62 Int) (a72 Int)
 (a13 Int) (a23 Int) (a33 Int) (a43 Int) (a53 Int) (a63 Int) (a73 Int)
 (a14 Int) (a24 Int) (a34 Int) (a44 Int) (a54 Int) (a64 Int) (a74 Int)
 (a15 Int) (a25 Int) (a35 Int) (a45 Int) (a55 Int) (a65 Int) (a75 Int)
 (a16 Int) (a26 Int) (a36 Int) (a46 Int) (a56 Int) (a66 Int) (a76 Int)
 (a17 Int) (a27 Int) (a37 Int) (a47 Int) (a57 Int) (a67 Int) (a77 Int)
 (a18 Int) (a28 Int) (a38 Int) (a48 Int) (a58 Int) (a68 Int) (a78 Int)
 (C1 Int)  (C2 Int)  (C3 Int)  (C4 Int)  (C5 Int)  (C6 Int)  (C7 Int)
)
:formula 
(and
 ;The initial value of each variable is equal to its index
 (= a11 1)
 (= a21 2)
 (= a31 3)
 (= a41 4)
 (= a51 5)
 (= a61 6)
 (= a71 7)
 
 ;Each choice has to be in the range of 1 to N
 (< 1 C1) (< C1 7)
 (< 1 C2) (< C2 7)
 (< 1 C3) (< C3 7)
 (< 1 C4) (< C4 7)
 (< 1 C5) (< C5 7)
 (< 1 C6) (< C6 7)
 (< 1 C7) (< C7 7)
 
 ;If a choice is taken
 (implies (= C1 2)  (and (= a12 a11) (= a22 (+ a11 a31)) (= a32 a31) (= a42 a41) (= a52 a51) (= a62 a61) (= a72 a71)))
 (implies (= C1 3)  (and (= a12 a11) (= a22 a21) (= a32 (+ a21 a41)) (= a42 a41) (= a52 a51) (= a62 a61) (= a72 a71)))
 (implies (= C1 4)  (and (= a12 a11) (= a22 a21) (= a32 a31) (= a42 (+ a31 a51)) (= a52 a51) (= a62 a61) (= a72 a71)))
 (implies (= C1 5)  (and (= a12 a11) (= a22 a21) (= a32 a31) (= a42 a41) (= a52 (+ a41 a61)) (= a62 a61) (= a72 a71)))
 (implies (= C1 6)  (and (= a12 a11) (= a22 a21) (= a32 a31) (= a42 a41) (= a52 a51) (= a62 (+ a51 a71)) (= a72 a71)))
 
 (implies (= C2 2)  (and (= a13 a12) (= a23 (+ a12 a32)) (= a33 a32) (= a43 a42) (= a53 a52) (= a63 a62) (= a73 a72)))
 (implies (= C2 3)  (and (= a13 a12) (= a23 a22) (= a33 (+ a22 a42)) (= a43 a42) (= a53 a52) (= a63 a62) (= a73 a72)))
 (implies (= C2 4)  (and (= a13 a12) (= a23 a22) (= a33 a32) (= a43 (+ a32 a52)) (= a53 a52) (= a63 a62) (= a73 a72)))
 (implies (= C2 5)  (and (= a13 a12) (= a23 a22) (= a33 a32) (= a43 a42) (= a53 (+ a42 a62)) (= a63 a62) (= a73 a72)))
 (implies (= C2 6)  (and (= a13 a12) (= a23 a22) (= a33 a32) (= a43 a42) (= a53 a52) (= a63 (+ a52 a72)) (= a73 a72)))
 
 (implies (= C3 2)  (and (= a14 a13) (= a24 (+ a13 a33)) (= a34 a33) (= a44 a43) (= a54 a53) (= a64 a63) (= a74 a73)))
 (implies (= C3 3)  (and (= a14 a13) (= a24 a23) (= a34 (+ a23 a43)) (= a44 a43) (= a54 a53) (= a64 a63) (= a74 a73)))
 (implies (= C3 4)  (and (= a14 a13) (= a24 a23) (= a34 a33) (= a44 (+ a33 a53)) (= a54 a53) (= a64 a63) (= a74 a73)))
 (implies (= C3 5)  (and (= a14 a13) (= a24 a23) (= a34 a33) (= a44 a43) (= a54 (+ a43 a63)) (= a64 a63) (= a74 a73)))
 (implies (= C3 6)  (and (= a14 a13) (= a24 a23) (= a34 a33) (= a44 a43) (= a54 a53) (= a64 (+ a53 a73)) (= a74 a73)))
 
 (implies (= C4 2)  (and (= a15 a14) (= a25 (+ a14 a34)) (= a35 a34) (= a45 a44) (= a55 a54) (= a65 a64) (= a75 a74)))
 (implies (= C4 3)  (and (= a15 a14) (= a25 a24) (= a35 (+ a24 a44)) (= a45 a44) (= a55 a54) (= a65 a64) (= a75 a74)))
 (implies (= C4 4)  (and (= a15 a14) (= a25 a24) (= a35 a34) (= a45 (+ a34 a54)) (= a55 a54) (= a65 a64) (= a75 a74)))
 (implies (= C4 5)  (and (= a15 a14) (= a25 a24) (= a35 a34) (= a45 a44) (= a55 (+ a44 a64)) (= a65 a64) (= a75 a74)))
 (implies (= C4 6)  (and (= a15 a14) (= a25 a24) (= a35 a34) (= a45 a44) (= a55 a54) (= a65 (+ a54 a74)) (= a75 a74)))
 
 (implies (= C5 2)  (and (= a16 a15) (= a26 (+ a15 a35)) (= a36 a35) (= a46 a45) (= a56 a55) (= a66 a65) (= a76 a75)))
 (implies (= C5 3)  (and (= a16 a15) (= a26 a25) (= a36 (+ a25 a45)) (= a46 a45) (= a56 a55) (= a66 a65) (= a76 a75)))
 (implies (= C5 4)  (and (= a16 a15) (= a26 a25) (= a36 a35) (= a46 (+ a35 a55)) (= a56 a55) (= a66 a65) (= a76 a75)))
 (implies (= C5 5)  (and (= a16 a15) (= a26 a25) (= a36 a35) (= a46 a45) (= a56 (+ a45 a65)) (= a66 a65) (= a76 a75)))
 (implies (= C5 6)  (and (= a16 a15) (= a26 a25) (= a36 a35) (= a46 a45) (= a56 a55) (= a66 (+ a55 a75)) (= a76 a75)))
 
 (implies (= C6 2)  (and (= a17 a16) (= a27 (+ a16 a36)) (= a37 a36) (= a47 a46) (= a57 a56) (= a67 a66) (= a77 a76)))
 (implies (= C6 3)  (and (= a17 a16) (= a27 a26) (= a37 (+ a26 a46)) (= a47 a46) (= a57 a56) (= a67 a66) (= a77 a76)))
 (implies (= C6 4)  (and (= a17 a16) (= a27 a26) (= a37 a36) (= a47 (+ a36 a56)) (= a57 a56) (= a67 a66) (= a77 a76)))
 (implies (= C6 5)  (and (= a17 a16) (= a27 a26) (= a37 a36) (= a47 a46) (= a57 (+ a46 a66)) (= a67 a66) (= a77 a76)))
 (implies (= C6 6)  (and (= a17 a16) (= a27 a26) (= a37 a36) (= a47 a46) (= a57 a56) (= a67 (+ a56 a76)) (= a77 a76)))
 
 (implies (= C7 2)  (and (= a18 a17) (= a28 (+ a17 a37)) (= a38 a37) (= a48 a47) (= a58 a57) (= a68 a67) (= a78 a77)))
 (implies (= C7 3)  (and (= a18 a17) (= a28 a27) (= a38 (+ a27 a47)) (= a48 a47) (= a58 a57) (= a68 a67) (= a78 a77)))
 (implies (= C7 4)  (and (= a18 a17) (= a28 a27) (= a38 a37) (= a48 (+ a37 a57)) (= a58 a57) (= a68 a67) (= a78 a77)))
 (implies (= C7 5)  (and (= a18 a17) (= a28 a27) (= a38 a37) (= a48 a47) (= a58 (+ a47 a67)) (= a68 a67) (= a78 a77)))
 (implies (= C7 6)  (and (= a18 a17) (= a28 a27) (= a38 a37) (= a48 a47) (= a58 a57) (= a68 (+ a57 a77)) (= a78 a77)))
 
 ;At least two numbers are greater than 50
 (or (and (>= a18 50) (>= a28 50))
	 (and (>= a18 50) (>= a38 50))
	 (and (>= a18 50) (>= a48 50))
	 (and (>= a18 50) (>= a58 50))
	 (and (>= a18 50) (>= a68 50))
	 (and (>= a18 50) (>= a78 50))
	 (and (>= a28 50) (>= a38 50))
	 (and (>= a28 50) (>= a48 50))
	 (and (>= a28 50) (>= a58 50))
	 (and (>= a28 50) (>= a68 50))
	 (and (>= a28 50) (>= a78 50))
	 (and (>= a38 50) (>= a48 50))
	 (and (>= a38 50) (>= a58 50))
	 (and (>= a38 50) (>= a68 50))
	 (and (>= a38 50) (>= a78 50))
	 (and (>= a48 50) (>= a58 50))
	 (and (>= a48 50) (>= a68 50))
	 (and (>= a48 50) (>= a78 50))
	 (and (>= a58 50) (>= a68 50))
	 (and (>= a58 50) (>= a78 50))
	 (and (>= a68 50) (>= a78 50))
 )
))









