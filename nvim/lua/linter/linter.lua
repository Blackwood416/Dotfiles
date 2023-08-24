local lint = require("lint")
lint.linters_by_ft = {
	c = { "cppcheck" },
	markdown = { "markdownlint" },
	bash = { "shellcheck" },
}
