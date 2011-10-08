(require 'netrc)
(require 'org2blog)
(setq abg-netrc-vc (netrc-machine (netrc-parse "~/.netrc") "virtuouscode" t))
(setq org2blog/wp-blog-alist
      '(("virtuouscode"
	 :url "http://avdi.org/devblog/xmlrpc.php"
	 :username (netrc-get abg-netrc-vc "login")
	 :password (netrc-get abg-netrc-vc "password")
	 :tags-as-categories nil)))

