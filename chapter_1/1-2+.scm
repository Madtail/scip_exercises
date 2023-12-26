;; 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 4/5))))
   (* 3 (- 6 2) (- 2 7)))
;; 1.3

(define (square a) (* a a))

(define (sum-of-squares a b) (+ (square a) (square b)))

(define (largest-numbers-squared a b c)
   (define (smallest a b c)
      (cond ((and (<= a b) (<= a c)) a)
            ((and (<= b a) (<= b c)) b)
            ((and (<= c b) (<= c a)) c)
            (else (error "Don't know"))))
   (cond ((= (smallest a b c) a) (sum-of-squares b c))
	 ((= (smallest a b c) b) (sum-of-squares a c))
         ((= (smallest a b c) c) (sum-of-squares a b))))

;; 1.5
(define (p) (p))

(define (test x y)
(if (= x 0) 0 y))

;;(test 0 (p))
;; goes into an endless loop

;; 1.6
(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (average x y)
(/ (+ x y) 2))

(define (improve guess x)
(average guess (/ x guess)))



(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
	(else else-clause)))


;; 1.7
(define limit 0.00000001)
(define (new-good-enough? new-guess old-guess)
  (< (abs (- new-guess old-guess)) limit))

(define (new-sqrt-iter guess x)
  	(let ((new-guess (improve guess x)))
	(if  (new-good-enough? new-guess guess)
		guess
		(new-sqrt-iter new-guess x))))

;; 1.8
(define (cube x)
  (* x x x))

(define (cubic-improve guess x)
  (/ 
    (+ (/ x (* guess guess)) (* 2 guess))
    3))

(define (cubic-good-enough? guess x)
 (< (abs (- (cube guess) x)) 0.001))


(define (cubic-iter guess x)
    (if (cubic-good-enough? guess x)
      guess
      (cubic-iter (cubic-improve guess x)  x)))
  









