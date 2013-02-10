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
	rm -fr _static
	rm -fr _source
	rm -fr *.html
	cp -r $(DOC)/build/html/* .

git:
	git add . _sources _static   
	git commit -a -m "updating the github pages"
	git push
	git checkout master


