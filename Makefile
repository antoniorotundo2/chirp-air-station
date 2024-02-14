install:
	git submodule init
	git submodule update --init
update:
	git submodule foreach git pull origin main
	git submodule update --remote
run:
	docker-compose up -d
stop:
	docker-compose down
stop-clear:
	docker-compose down --rmi all