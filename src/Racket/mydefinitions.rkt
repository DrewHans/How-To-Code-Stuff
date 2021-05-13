#lang scheme

;;; returns the first atom of a list ;;;
(define firstOf car)

;;; returns the second atom of a list ;;;
(define secondOf cadr)

;;; returns everything but the first of a list ;;;
(define restOf cdr)

;;; returns the last element of a list ;;;
(define (lastOf l)
  (cond 
      [(null? (cdr l)) (car l)]
      [else (lastOf (cdr l))]
  )
)

;;; returms all but the last element of a list ;;;
(define (allButLastOf l)
  (cond
      [(null? (cdr l)) '()]
      [else (cons (car l) (allButLastOf (cdr l)))]
  )
)

;;; atom? returns #t if item is an atom ;;;
(define (atom? item) (not(list? item)))

;;; first-atom returns the first atom of a list l ;;;	  
(define first-atom 
  (λ (l)
    (cond
	  [(null? l) '()]
	  [(atom? (car l)) l]
	  [else first-atom (car l)]) ))	  

;;; count-occurences counts the number of times item appears as a crossingName in l ;;;
(define (count-occurrences item l)
    (cond 
      [(null? l) 0]
      [(eqv? (firstOf l) item) (+ 1 (count-occurrences item (restOf l)))]
      [else (count-occurrences item (restOf l))]
    )
)

;;; member? returns #t if l contains member a ;;;	  
(define member?
  (λ (a l)
    (cond
      [(null? l) #f]
      [else (or (eq? (car l) a) (member? a (cdr l)))]
    )
  )
)

;;; remove-member removes the first instance of member from the list l ;;;
(define remove-member
  (λ (member l)
    (cond
      ;;; if tripcode is empty return nothing
      [(null? l) '()]
      ;;; if member is firstOf tripcode return restOf tripcode
      [(eqv? member (firstOf l)) (restOf l)]
      ;;; search the restOf tripcode for member and when found return restOf tripcode
      [else (cons (firstOf l) (remove-member member (restOf l)))]
    )
  )
)

;;; insertL inserts new to the left of the first occurrence of old in list l ;;;
(define insertL 
  (lambda(new old l)
    (cond
	   [(null? l) '()]
	   [(eq? (car l) old) (cons new (cons old (cdr l)))]
      [else (cons (car l) (insertL new old (cdr l)))]
    )
  )
)
	  
	  
;;; insertR inserts new to the right of the first occurrence of old in list l ;;;
(define insertR
  (lambda(new old l)
    (cond
      [(null? l) '()]
      [(eq? (car l) old) (cons old (cons new (cdr l)))]
      [else (cons (car l) (insertR new old (cdr l)))]
    )
  )
)

	  
;;; subst replaces the first occurrence of old in list l with new ;;;
(define subst
  (lambda(new old l)
    (cond  
	  [(null? l) '()]
	  [(eq? (car l) old) (cons new (cdr l))]
	  [else (cons (car l) (subst new old (cdr l)))]
    )
  )
)

	  
;;; multirember removes all instances of member a from list l ;;;
(define multirember
  (lambda(a l)
    (cond
	  [(null? l) '()]
 	  [(eq? (car l) a) (multirember a (cdr l))]
 	  [else (cons (car l) (multirember a (cdr l)))]
    )
  )
)

;;; multiinsertL inserts new to the left of all occurrences of old in list l;;;
(define multiinsertL
  (lambda(new old l)
    (cond
	  [(null? l) '()]
	  [(eq? (car l) old) (cons new (cons old (multiinsertL new old (cdr l))))]
	  [else (cons (car l) (multiinsertL new old (cdr l)))]	  
    )
  )
)

;;; multiinsertR inserts new to the right of all occurrences of old in list l ;;;
(define multiinsertR
  (lambda(new old l)
    (cond
	  [(null? l) '()]
	  [(eq? (car l) old) (cons (car l) (cons new (multiinsertR new old (cdr l))))]
	  [else (cons (car l) (multiinsertR new old (cdr l)))]	  
    )
  )
)

;;; multisubst replaces all occurrences of old in list l with new ;;;
(define multisubst
  (lambda(new old l)
    (cond
	  [(null? l) '()]
	  [(eq? (car l) old) (cons new (multisubst new old (cdr l)))]
	  [else (cons (car l) (multisubst new old (cdr l)))]
    )
  )
)