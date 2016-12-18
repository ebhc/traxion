(require 'traxion-dao-test)

(ert-deftest traxion-dao-file-test-reflection ()
  (let ((dao (make-instance 'traxion-dao-file)))
    (traxion-dao-test-is-base    dao nil)
    (traxion-dao-test-is-emacsql dao nil)
    (traxion-dao-test-is-file    dao t)
    (traxion-dao-test-is-mock    dao nil)
    )
  )

;; (ert-deftest traxion-dao-file-test-habit-entity ()
;;   (traxion-dao-test-habit-entity (make-instance 'traxion-dao-file))
;;   )

(provide 'traxion-dao-file-test)
