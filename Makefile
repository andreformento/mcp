.PHONY: install run clean

install:
``

run: install
	. .venv/bin/activate && mcp run --transport stdio calculator.py

clean:
	rm -rf .venv
