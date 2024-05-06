build:
	rm -rf ./dist/** && python -m build
install:
	pip install -e .
test-publish:
	twine upload -r testpypi dist/*
publish:
	twine upload -r pypi dist/*
clean:
	rm -rf dist/ build/ *.egg-info
format:
	black .
test:
	pytest --ignore=tests/integration
test-integration:
	pytest tests/integration

