(require 'traxion-dao)

(defclass traxion-dao-mock (traxion-dao)
  (
   (entityHabit
    :initarg :entityHabit
    :initform nil
    :custom list
    :type list
    :documentation "The HABIT entity represented as a list of
   habit instances. FIXME: perhaps we should have a separate
   class for these instances.")

   )

  "An in-memory implementation of our DAO: it should pass all the
  same tests as the subclass implementations, but doesn't
  actually persist any data to the filesystem" )

(defmethod traxion-dao-add-habit ((dao traxion-dao-mock) habit)
  (if (traxion-entity-habit-p habit)
      (let* (
             (primary-key-slot (traxion-entity-primary-key habit))
             (primary-key-new-value (slot-value habit primary-key-slot))
             (object-to-replace (object-assoc primary-key-new-value primary-key-slot (slot-value dao :entityHabit)))
             )
        (if object-to-replace (object-remove-from-list dao :entityHabit object-to-replace) )
        (object-add-to-list dao :entityHabit habit t) ;APPEND=t affects list order. duplicates are still not allowed
        )
    )
  )

(defmethod traxion-dao-get-habits ((dao traxion-dao-mock))
  (slot-value dao :entityHabit)
  )

(provide 'traxion-dao-mock)
