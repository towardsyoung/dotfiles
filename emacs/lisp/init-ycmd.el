(require-package 'company-ycmd)
(require-package 'flycheck-ycmd)
(require-package 'ycmd)
(require 'ycmd)
(add-hook 'after-init-hook #'global-ycmd-mode)
(add-hook 'c-mode-hook 'ycmd-mode)
(add-hook 'python-mode-hook 'ycmd-mode)
(add-hook 'web-mode-hook 'ycmd-mode)
(company-ycmd-setup)
(add-hook 'python-mode-hook (lambda () (add-to-list 'flycheck-disabled-checkers 'ycmd)))
(set-variable 'ycmd-server-command '("python2" "/home/jianglin/.vim/bundle/YouCompleteMe/third_party/ycmd/ycmd"))
(set-variable 'ycmd-global-config "/home/jianglin/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py")
(provide 'init-ycmd)
