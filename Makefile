.PHONY: all clean install test train update upgrade usage

usage:
	@echo "usage: make [clean|test|train|all]"

clean:
	rm -rf results/ train_test_split/
	ls -r models/* | tail -n+3 | xargs rm

install upgrade:
	pip install --upgrade pip
	pip install --upgrade -r requirements.txt

test:
	rasa data validate
	rasa test

train:
	rasa train

all:
	make train
	make test
