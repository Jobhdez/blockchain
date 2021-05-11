;;; Author:
;;; *** Job Hernandez
;;;-------------------------------------

(in-package #:blockchain)

;;; A BLOCK is a Struct consisting of:
;;;      * HASH
;;;      * PREVIOUS-HASH
;;;      * DATA
;;;      * TIME-STAMP

;;; A HASH is a string
;;; PREVIOUS-HASH is a string
;;; A DATA is a string
;;; A TIME-STAMP is a number

(defstruct (block (:type list)
		  (:constructor mkblock))
  hash previous-hash data time-stamp nonce)


(defun compute-hash (block)
  "Takes a BLOCKCHAIN and calculates the hash using 
   any public key crypto algorithm?"
  ;; purpose: why are we computing this hash?
  ;; BLOCKCHAIN -> Hash
  (let ((str (concatenate 'string
			 (block-hash block)
    			 (block-previous-hash block)
			 (write-to-string (block-time-stamp block))
			 (block-nonce block))))
    (byte-array-to-hex-string
     (digest-sequence :sha256
		      ascii-string-to-byte-array str))))
					     
  
