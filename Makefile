DOCKER = ${DOCKER_REPO}
run:
	docker run -v $(CURDIR)/mcdata:/data:rw -p 25565:25565 -p 127.0.0.1:25566:25566 --name minecraft -d --restart=always $(DOCKER)/minecraft:latest
build:
	docker build -t $(DOCKER)/minecraft:latest .
	docker push $(DOCKER)/minecraft:latest
clean:
	docker system prune -af
stop:
	docker stop minecraft
