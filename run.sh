emacs --batch --eval "
    (progn
      (require 'ob-tangle)
     (org-babel-do-load-languages
      'org-babel-load-languages
      '((shell . t)))
      (dolist (file command-line-args-left)
        (with-current-buffer (find-file-noselect file)
          (org-babel-execute-buffer))))
  " "$@"
