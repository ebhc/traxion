Traxion tracks actions you perform in your everyday life.  It
stretches you to form and maintain habits and accomplish goals by
providing you with feedback about how you are spending your time and
energies.  Great for obsessive geeks who love to keep statistics about
everything they do and visualize trends in their behaviour.

----

Code already exists for this project, but it is currently entangled
with my personal data.  I need to disentangle and restructure it to
make it reusable for other people, and hopefully get feedback and
suggestions from them about how to improve it.  I will be gradually
committing the restructured reusable version to this public
repository.

The code is currently written in pure Emacs lisp, but is not yet
structured as proper Emacs lisp package.  I intend to package it
properly and make it available through Melpa for easy installation.

It makes use of Emacs org-mode for tracking of progress on goals
expressed as org-mode nodes with appropriate clock entries, completion
statuses, priorities and project labels.

I am developing under Linux, but it should in theory be possible to
get things working anywhere Emacs runs if the various dependencies
external to Emacs are also installed and made accessible on the
machine.  One such external dependency is gnuplot, which is used for
visualizing behaviour for habits.

I also intend to use https://github.com/skeeto/emacsql to store the
habit data in a SQLite database in addition to the current org-table
format.  The reason i am contemplating this is that the existing code
has performance issues being a pure elisp project, and having the data
in a database allows other applications access to it to perhaps speed
up certain intensive operations.  Consequently, i may in future add
Java or C++ applications which also access the central database.
