(asdf:defsystem #:blockchain
		:license "MIT License (see LICENSE.txt)"
		:description "A simple implementation of a simple blockchain."
		:author "Job Hernandez <hj93@protonmail.com>"
		:version (:read-file-form "VERSION.txt")
		:depends-on (#:ironclad)
		:pathname "src/"
		:serial t
		:components
		((:file "packages")
		 (:module "blockchain"
			  :serial t
			  :components ((:file "block")))))
