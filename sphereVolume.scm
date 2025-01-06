#lang sicp

;(lambda (parameters) body)

(let ((sphereVolume (lambda (ra) (let ((pi 3.14)) (cond
                                                    ((negative? ra) 0)
                                                    (else
                                                     (* (/ 4 3) pi (expt ra 3))
                                                     )
                                                    )))))

  ;body
  (sphereVolume 3.2)
  )