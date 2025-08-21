.PHONY: install run run-cli clean

install:
	python -m venv .venv
	. .venv/bin/activate && pip install -r requirements.txt

run: install
	. .venv/bin/activate && mcp dev weather.py

run-cli: install
	. .venv/bin/activate && mcp run --transport stdio weather.py

clean:
	rm -rf .venv
