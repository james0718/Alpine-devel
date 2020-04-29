run:
	docker-compose -f Alpine/docker-compose.yml up -d --build

stop:
	docker-compose -f Alpine/docker-compose.yml stop

down:
	docker-compose -f Alpine/docker-compose.yml down

cleandocker:
	# Stop all containers (if running)
	docker-compose -f Alpine/docker-compose.yml stop
	# Remove mainflux containers
	docker ps -f name=m2m -f name=aimlink_astore -aq | xargs -r docker rm
	# Remove exited containers
	docker ps -f name=m2m -f name=aimlink_astore -f status=dead -f status=exited -aq | xargs -r docker rm -v
	# Remove unused images
	docker images -f dangling=true -q | xargs -r docker rmi
	# Remove old mainflux images
	docker images -q  | xargs -r docker rmi

#changelog:
#	git log $(shell git describe --tags --abbrev=0)..HEAD --pretty=format:"- %s"
