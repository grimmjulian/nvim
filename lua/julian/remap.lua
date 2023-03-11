local wk = require("which-key")

-- Here are only general Keymaps found that do not require any plugin
-- Plugin Keymaps are found in the corresponding after/plugin file.
-- To open Telescope results in Trouble, use <c-t>
-- This is configed in after/plugin/telesecope.lua

wk.register({
  ["<leader>e"] = { vim.cmd.Ex, "Open Filebrowser" },
  ["<leader>t"] = {
    name = "open terminal",
    t = { "<c-w><c-n><cmd>terminal<cr>A", "Open Terminal in new window" },
    -- TODO: Filetype specifics should be correctly setup
    rr = { "<c-w><c-n><cmd>terminal<cr>AR<cr>", "Open Terminal with R open" }
  },
  ["<c-n><c-n>"] = {
    "<c-\\><c-n>",
    "Enter Normal Mode",
    mode = "t" }
})
