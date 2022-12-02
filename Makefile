
.PHONY: clean test usage

usage:
	@echo "usage: make [clean|build]"

clean:
	rm -rf results/ train_test_split/
	ls -r models/* | tail -n+5 | xargs rm

test:
	rasa data validate stories --max-history 5
	rasa test

train:
	rasa train --force

#run:
#	rasa run actions

build:
	make clean
	make train
	make test
