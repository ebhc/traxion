(require 'traxion-dao-test)

(ert-deftest traxion-dao-mock-test-reflection ()
  (let ((dao (make-instance 'traxion-dao-mock)))
    (traxion-dao-test-is-base    dao nil)
    (traxion-dao-test-is-emacsql dao nil)
    (traxion-dao-test-is-file    dao nil)
    (traxion-dao-test-is-mock    dao t)
    )
  )

(ert-deftest traxion-dao-mock-test-habit-entity ()
  (traxion-dao-test-habit-entity (make-instance 'traxion-dao-mock))
  )

(provide 'traxion-dao-mock-test)
