
resume.html: resume.md header.html Makefile
	cat ./resume.md | pandoc -s -H header.html > resume.html

reload: resume.html Makefile
	reload.bash resume.html
