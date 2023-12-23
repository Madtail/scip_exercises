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


