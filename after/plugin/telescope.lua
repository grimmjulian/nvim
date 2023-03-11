local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
     i = { ["<c-t>"] = trouble.open_with_trouble },
     n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}

local wk = require("which-key")
local tb = require("telescope.builtin")

wk.register({
  ["<leader>f"] = {
    name = "find",
    f = { tb.find_files, "Find File" },
    b = { tb.buffers, "Find Buffers" },
    g = { function() tb.grep_string({ search = vim.fn.input("Grep > ") }) end, "Find Grep String" },
    h = { tb.help_tags, "Find Help Tags" },
    d = { tb.diagnostics, "Find diagnostics" },
    t = { "<cmd>TodoTelescope<cr>", "Find todo comments" }
  },
  ["<leader>b"] = {
    { tb.buffers, "Buffers"}
}})

