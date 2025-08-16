.PHONY: install run clean

install:
	python -m venv .venv
	. .venv/bin/activate && pip install -r requirements.txt

run: install
	. .venv/bin/activate && mcp run --transport stdio calculator.py

clean:
	rm -rf .venv
