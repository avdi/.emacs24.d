(require 'netrc)
(require 'org2blog)
(setq abg-netrc-vc (netrc-machine (netrc-parse "~/.netrc") "virtuouscode"))
(setq org2blog/wp-blog-alist
      '(("virtuouscode"
	 :url "http://devblog.avdi.org/xmlrpc.php"
	 :username (netrc-get abg-netrc-vc "login")
	 :password (netrc-get abg-netrc-vc "password")
	 :tags-as-categories nil)))

;; See https://github.com/punchagan/org2blog/issues/89#issuecomment-8013355
(setq xml-entity-alist
  '(("lt"   . "&#60;")
    ("lt"   . "<")
    ("gt"   . ">")
    ("apos" . "'")
    ("quot" . "\"")
    ("amp"   . "&#38;")
    ("amp"  . "&")))
