install:
	git submodule init
update:
	git submodule foreach git pull origin main
run:
	docker-compose up -d
stop:
	docker-compose down
stop-clear:
	docker-compose down --rmi all