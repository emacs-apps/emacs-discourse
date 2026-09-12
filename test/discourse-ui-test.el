;;; discourse-ui-test.el --- UI integration contracts for discourse.el -*- lexical-binding: t; -*-

(require 'ert)
(require 'discourse-topic-list)
(require 'discourse-topic)
(require 'discourse-transient)
(require 'discourse-evil)

(ert-deftest discourse-transient-prefixes-are-discoverable-commands ()
  (should (commandp #'discourse-topic-list-transient))
  (should (commandp #'discourse-topic-transient))
  (should (eq #'discourse-topic-list-transient
              (keymap-lookup discourse-topic-list-mode-map "?")))
  (should (eq #'discourse-topic-transient
              (keymap-lookup discourse-topic-mode-map "?"))))

(provide 'discourse-ui-test)

;;; discourse-ui-test.el ends here
