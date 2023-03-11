require("zk").setup({
  picker = "telescope"
})

local zk = require("zk")
local commands = require("zk.commands")

commands.add("ZkOrphans", function(options)
  options = vim.tbl_extend("force", { orphan = true }, options or {})
  zk.edit(options, { title = "Zk Orphans" })
end)

local wk = require("which-key")

wk.register({
  ["<leader>z"] = {
    name = "zk",
    n = { "<cmd>ZkNew { title = vim.fn.input('Title: ')}<cr>", "Create a new note" },
    f = { "<cmd>ZkNotes { sort = { 'modified'}} <CR>", "Find Note" },
    g = { "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", "Find Note Grep" },
    t = { "<cmd>ZkTags<cr>", "Find Tags" }
  }
},
  { mode = "n" })

wk.register({
  ["<leader>z"] = {
    name = "zk",
    f = { "<cmd>'<,'>ZkMatch<cr>", "Search Match" },
    g = { "<cmd>'<,'>ZkMatch<cr>", "Search Match" },
  }
},
  { mode = "v" }
)
