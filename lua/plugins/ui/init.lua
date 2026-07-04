local plugins = {}


vim.list_extend(plugins, require("plugins.ui.general"))
vim.list_extend(plugins, require("plugins.ui.greeter"))
vim.list_extend(plugins, require("plugins.ui.statusline"))

return plugins
