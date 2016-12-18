(require 'eieio)
(defclass traxion-entity ()
  (
   (id
    :initarg :id
    :initform ""
    :custom string
    :type string
    :documentation "A generic string identifier, which each
   subclass must either use or identify with one of its string
   properties. FIXME: not sure how i should be handling "
    )
   )

  "Base class of all traxion-entity* subclasses implementing
  entities which serve as inputs to the DAO interface used by the
  rest of the program, and processed by each DAO implementation
  to and from whatever internal representation it uses"

  )

(defmethod traxion-entity-primary-key ((entity traxion-entity))
  "Return the name of the slot which is to be used as the primary key"
  :id
  )

(provide 'traxion-entity)
