#lang scheme
(define x1 (list 1 2 (list 3 4)))
(define y1 (list (list 1 2) (list 3 4)))
(define my-tree1 (list 1 (list 2 (list 3 4) (list 5 6)) (list 7 (list 8)))) 
(define (fringe tree) 
   (define nil '()) 
   (cond ((null? tree) nil) 
         ((not (pair? tree)) (list tree)) 
         (else (append (fringe (car tree)) (fringe (cdr tree)))))) 

(fringe x1)
(fringe y1)
(fringe my-tree1)
