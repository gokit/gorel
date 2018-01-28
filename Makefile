VERSION = 0.0.1

buildall: build buildmongrel buildsquarel

buildmongrel:
	docker build -t gomongrel:$(VERSION) -f ./gomongrel/Dockerfile ./
	docker tag gomongrel:$(VERSION) $(USER)/gomongrel:$(VERSION)

buildsquarel:
	docker build -t gosquarel:$(VERSION) -f ./gosquarel/Dockerfile ./
	docker tag gosquarel:$(VERSION) $(USER)/gosquarel:$(VERSION)

build:
	docker build -t gorel:$(VERSION) ./
	docker tag gorel:$(VERSION) $(USER)/gorel:$(VERSION)

pushall: push pushmongrel pushsquarel

push:
	docker push $(USER)/gorel:$(VERSION)

pushmongrel:
	docker push $(USER)/gomongrel:$(VERSION)

pushsquarel:
	docker push $(USER)/gosquarel:$(VERSION)

cleanall: clean cleanmongrel cleansquarel

clean:
	docker rmi $(USER)/gorel:$(VERSION)

cleanmongrel:
	docker rmi $(USER)/gomongrel:$(VERSION)

cleansquarel:
	docker rmi $(USER)/gosquarel:$(VERSION)
