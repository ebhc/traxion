(require 'traxion-dao)
;;(require 'emacsql-sqlite)
(defclass traxion-dao-emacsql (traxion-dao)
  ()
  "An implementation of our DAO which is backed by a sqlite
  database accessible through emacsql" )

(provide 'traxion-dao-emacsql)
