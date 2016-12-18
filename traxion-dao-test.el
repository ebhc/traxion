(require 'ert)
(require 'traxion-dao)
(require 'traxion-dao-emacsql)
(require 'traxion-dao-file)
(require 'traxion-dao-mock)

(defun traxion-dao-test-is-base (dao verdict)
  (should (equal verdict (traxion-dao-p dao)))
  (should (equal t (traxion-dao-child-p dao)))
  )

(defun traxion-dao-test-is-emacsql (dao verdict)
  (should (equal verdict (traxion-dao-emacsql-p       dao)))
  (should (equal verdict (traxion-dao-emacsql-child-p dao)))
  )

(defun traxion-dao-test-is-file (dao verdict)
  (should (equal verdict (traxion-dao-file-p       dao)))
  (should (equal verdict (traxion-dao-file-child-p dao)))
  )

(defun traxion-dao-test-is-mock (dao verdict)
  (should (equal verdict (traxion-dao-mock-p       dao)))
  (should (equal verdict (traxion-dao-mock-child-p dao)))
  )

(ert-deftest traxion-dao-test-reflection ()
  (let ((dao (make-instance 'traxion-dao)))
    (traxion-dao-test-is-base    dao t)
    (traxion-dao-test-is-emacsql dao nil)
    (traxion-dao-test-is-file    dao nil)
    (traxion-dao-test-is-mock    dao nil)
    )
  )

(defun traxion-dao-test-habit-entity (dao)
  "Method for testing whether a given traxion-dao implementation
can be used to access and modify the habit entity.  It should be
called by each implementation's test file with an instance of its
own implementation"
  (should (equal nil (traxion-dao-get-habits dao)))
  (setq h1 (make-instance 'traxion-entity-habit :code "h1" :description "d1"))
  (traxion-dao-add-habit dao h1)
  (should (equal (traxion-dao-get-habits dao) (list h1)))
  (setq h2a (make-instance 'traxion-entity-habit :code "h2" :description "d2a"))
  (traxion-dao-add-habit dao h2a)
  (should (equal (traxion-dao-get-habits dao) (list h1 h2a)))
  (traxion-dao-add-habit dao "fake") ; this won't be added because it isn't an instance of traxion-entity-habit
  (should (equal (traxion-dao-get-habits dao) (list h1 h2a)))
  (traxion-dao-add-habit dao h2a)    ; this will not be added again because it already exists
  (should (equal (traxion-dao-get-habits dao) (list h1 h2a)))
  (setq h2b (make-instance 'traxion-entity-habit :code "h2" :description "d2b"))
  (traxion-dao-add-habit dao h2b)    ; this will replace h2a because it shares its primary key (:code) value
  (should (equal (traxion-dao-get-habits dao) (list h1 h2b)))
  )

(provide 'traxion-dao-test)
