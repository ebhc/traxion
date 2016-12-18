(require 'eieio)
(defclass traxion-dao ()
  ()
  "Baseclass of all traxion-dao* implementation subclasses")

(defmethod traxion-dao-add-habit ((dao traxion-dao) habit)
  "Add a new instance of the HABIT entity to the underlying db,
  replacing the instance with the same primary key value, if
  such exists"
  )

(defmethod traxion-dao-get-habits ((dao traxion-dao))
  "Get the list of all HABIT entity instances that have been
  added to the underlying db"
  nil
  )

(provide 'traxion-dao)
