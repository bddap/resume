
resume.html: readme.md header.html Makefile
	cat ./readme.md | pandoc -s -H header.html > resume.html

reload: resume.html Makefile
	reload.bash resume.html
