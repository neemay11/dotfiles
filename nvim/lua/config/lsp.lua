local diagnostic_signs = {
	error = "❌",
	warn = "⚠️",
	info = "ℹ️",
	hint = "💡",
}

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = diagnostic_signs.error,
			[vim.diagnostic.severity.WARN] = diagnostic_signs.warn,
			[vim.diagnostic.severity.INFO] = diagnostic_signs.info,
			[vim.diagnostic.severity.HINT] = diagnostic_signs.hint,
		},
	},
})
