return {
  "phaazon/mind.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  branch = "v2",
  config = function()
    require("mind").setup(
    )
  end
}
