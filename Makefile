VERSION = 0.0.1

build:
	docker build -t gorel:$(VERSION) ./
	docker tag gorel:$(VERSION) $(USER)/gorel:$(VERSION)

push:
	docker push $(USER)/gorel:$(VERSION)

clean:
	docker rmi $(USER)/gorel:$(VERSION)
