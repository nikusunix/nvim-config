local functions = require("functions")

-- Buffer
vim.keymap.set("n", "<leader>bn", "<cmd>enew<cr>", { desc = "Buffer/New" })
vim.keymap.set("n", "<leader>bs", functions.buffer_save, { desc = "Buffer/Save" })
vim.keymap.set("n", "<leader>bd", functions.buffer_close, { desc = "Buffer/Closer" })

vim.keymap.set("n", "<leader>bl", "<cmd>bnext<cr>", { desc = "Buffer/Next" })
vim.keymap.set("n", "<leader>bj", "<cmd>bprevious<cr>", { desc = "Buffer/Previous" })

-- UI
vim.keymap.set(
    "n",
    "<leader>utl",
    functions.toggle_line_numbers,
    { desc = "UI/Toggle/Line number" }
)
vim.keymap.set(
    "n",
    "<leader>utd",
    functions.toggle_diagnostics_window,
    { desc = "UI/Toggle/Diagnostics window" }
)

-- Windows
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l")

vim.keymap.set("n", "<leader>wsh", "<cmd>split<cr>", { desc = "Window/Split/Horizontal" })
vim.keymap.set("n", "<leader>wsv", "<cmd>vsplit<cr>", { desc = "Window/Split/Vertical" })

vim.keymap.set("n", "<leader>wd", "<cmd>close<cr>", { desc = "Window/Close" })

-- Code Actions
vim.keymap.set("i", "<Tab>", "<C-y>", { desc = "Actions/Autocomplite" })

-- LSP
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "LSP/Definition" })
vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, { desc = "LSP/Implementation" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "LSP/Rename" })
