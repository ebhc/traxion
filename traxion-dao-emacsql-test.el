(require 'traxion-dao-test)

(ert-deftest traxion-dao-emacsql-test-reflection ()
  (let ((dao (make-instance 'traxion-dao-emacsql)))
    (traxion-dao-test-is-base    dao nil)
    (traxion-dao-test-is-emacsql dao t)
    (traxion-dao-test-is-file    dao nil)
    (traxion-dao-test-is-mock    dao nil)
    )
  )

;; (ert-deftest traxion-dao-emacsql-test-habit-entity ()
;;   (traxion-dao-test-habit-entity (make-instance 'traxion-dao-emacsql))
;;   )

(provide 'traxion-dao-emacsql-test)
