(require 'traxion-entity)

(defclass traxion-entity-habit (traxion-entity)
  (
   (code
    :initarg :code
    :initform ""
    :custom string
    :type string
    :documentation "The unique short name identifying the habit")
   (description
    :initarg :description
    :initform ""
    :custom string
    :type string
    :documentation "A more descriptive string explaining what the habit is")
   )
  "An entity implementation capturing the details of the HABIT entity"
  )

(defmethod traxion-entity-primary-key ((entity traxion-entity-habit))
  :code
  )

(provide 'traxion-entity-habit)
