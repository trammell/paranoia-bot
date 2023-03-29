
.PHONY: clean test usage

usage:
	@echo "usage: make [clean|test|train|all]"

clean:
	rm -rf results/ train_test_split/
	ls -r models/* | tail -n+3 | xargs rm

test: models/
	rasa data validate
	rasa data validate stories --max-history 5
	rasa test

models/ train:
	rasa train

all:
	make train
	make test
