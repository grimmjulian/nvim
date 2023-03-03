local wk = require("which-key")
local tb = require("telescope.builtin")

-- To open Telescope results in Trouble, use <c-t>
-- This is configed in after/plugin/telesecope.lua

wk.register({
  ["<leader>e"] = { vim.cmd.Ex, "Open Filebrowser" },
  ["<leader>f"] = {
    name = "find",
    f = { tb.find_files, "Find File" },
    b = { tb.buffers, "Find Buffers" },
    g = { function() tb.grep_string({ search = vim.fn.input("Grep > ") }) end, "Find Grep String" },
    h = { tb.help_tags, "Find Help Tags" },
    d = { tb.diagnostics, "Find diagnostics" },
    t = { "<cmd>TodoTelescope<cr>", "Find todo comments" }
  },
  ["<leader>t"] = {
    name = "open terminal",
    t = { "<c-w><c-n><cmd>terminal<cr>A", "Open Terminal in new window" },
    -- TODO: Filetype specifics should be correctly setup
    rr = { "<c-w><c-n><cmd>terminal<cr>AR<cr>", "Open Terminal with R open" }
  },
  ["<leader>b"] = {
    { tb.buffers, "Buffers"}
  },
  ["<leader>g"] = {
    { "<cmd>Git<cr>", "Git"}
  },
  ["<c-n><c-n>"] = {
    "<c-\\><c-n>",
    "Enter Normal Mode",
    mode = "t" }
})
