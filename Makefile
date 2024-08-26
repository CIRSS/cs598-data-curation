
BUILDDIR      = _build
JB_IMAGE      = craigwillis/jupyter-book:latest

.PHONY: clean image docs

clean:
	rm -rf $(BUILDDIR)

image:
	docker build --platform linux/arm64,linux/amd64 -t $(JB_IMAGE) .

docs:
	docker run -it --rm -v `pwd`:/src $(JB_IMAGE) jupyter-book build --all .
