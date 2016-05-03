DOCKER_PRJ = jenkins
.PHONY: build bootstrap run stop destroy shell

run:
	@docker-compose run --rm --service-ports $(DOCKER_PRJ)

start:
	@docker-compose start

stop:
	@docker-compose stop

destroy: stop
	@docker-compose rm -f -v

shell:
	@docker-compose run --rm --service-ports $(DOCKER_PRJ) /bin/bash
