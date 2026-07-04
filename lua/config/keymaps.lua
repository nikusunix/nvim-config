local functions = require("functions")

-- Buffer
vim.keymap.set("n", "<leader>bn", "<cmd>enew<cr>", { desc = "New buffer" })
vim.keymap.set("n", "<leader>bs", functions.buffer_save, { desc = "Save buffer" })
vim.keymap.set("n", "<leader>bd", functions.buffer_close, { desc = "Close buffer" })

vim.keymap.set("n", "<leader>bl", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bj", "<cmd>bprevious<cr>", { desc = "Previous buffer" })

-- UI
vim.keymap.set(
    "n",
    "<leader>utl",
    functions.toggle_line_numbers,
    { desc = "Toggle relative line number" }
)

-- Code Actions
vim.keymap.set("i", "<Tab>", "<C-y>", { desc = "Confirm autocomplite" })
