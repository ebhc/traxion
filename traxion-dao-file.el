(require 'traxion-dao)
(defclass traxion-dao-file (traxion-dao)
  ()
  "An implementation of our DAO which is backed by a flat file
  consisting of a collection of org-mode tables -- i'm not sure
  how few i can get away with, but i suspect it isn't going to
  turn out just to be one")

(provide 'traxion-dao-file)
