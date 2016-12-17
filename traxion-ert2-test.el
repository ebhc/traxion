(require 'ert)

(ert-deftest traxion-ert2-test-1 ()
  (should
   (equal (not (and t nil)) (or (not t) (not nil))))
  )

(provide 'traxion-ert2-test)
