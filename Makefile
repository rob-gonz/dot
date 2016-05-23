###
### dot configuration makefile to automate setup
###

CONFIG = $(shell ls -d */)

blank:
	@echo " "
	@echo "Use: 'make <command>'"
	@echo "OR"
	@echo "Use: 'make <command> CONFIG=<config folder>'"
	@echo " "
	@echo "Avaliable commands:"
	@echo "    list   - Displays all config folders available"
	@echo "        example: make list"
	@echo "    deploy - Deploys all or a specified <config folder>"
	@echo "        example: make deploy CONFIG=tmux/"
	@echo " "

list:
	@for D in ${CONFIG}; do echo $${D}; done

deploy:
	@echo "Deploying Config for ${CONFIG}"
	@for D in ${CONFIG}; do cd $${D} && echo "Deploying $${D}..." && ./apply.sh && cd ../; done 

clean:
	@echo "Removing files *~"
	@find . -name "*~" -type f -delete
