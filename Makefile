
BUILDDIR      = _build
JB_IMAGE      = craigwillis/jupyter-book:latest

.PHONY: clean jb-image docs

clean:
	rm -rf $(BUILDDIR)

jb-image:
	docker build -t $(JB_IMAGE) .

docs:
	docker run -it --rm -v `pwd`:/src $(JB_IMAGE) jupyter-book build --all .
