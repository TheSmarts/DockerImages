pocketbase: pocketbase/Dockerfile
	docker build pocketbase \
		-t sanderskjulsvik/pocketbase

push-pocketbase: pocketbase
	docker push sanderskjulsvik/pocketbase
