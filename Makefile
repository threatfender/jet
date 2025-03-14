.PHONY: help docs clean

help:
	@echo "USAGE"
	@echo "  make [task]"
	@echo ""
	@echo "TASKS"
	@echo "  d, docs   Build docs"
	@echo "  c, clean  Clean all"
	@echo ""

d: docs
docs:
	@mix deps.get
	@MIX_ENV=docs mix docs

c: clean
clean:
	@rm -rf .elixir_ls _build cover doc deps
