PROJECT=`basename $(PWD)`
DIR=/tmp/$(PROJECT)
DOC=$(DIR)/doc

all: html git
	echo done

html:
	cd /tmp
	rm -rf $(DIR)
	cd /tmp; git clone git://github.com/futuregrid/$(PROJECT).git
	cd $(DOC); ls; make html
	cp -r $(DOC)/build/html/* .

git:
	git add . _sources _static   
	git commit -a -m "updating the github pages"
#	git commit -a 
#	git commit -a 
#	git push
#	git checkout master


