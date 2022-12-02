
.PHONY: clean test usage

usage:
	@echo "usage: make [clean|build]"

clean:
	rm -rf results/

test:
	rasa data validate stories --max-history 5
	rasa test



