
build:
	@rm -rf public
	@hugo

run:
	@hugo server -D

deploy:
	@git add .
	@git commit
	@git push origin master
