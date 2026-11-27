return {
  "Mirsmog/real-icons.nvim",
  opts = {
    pack = "flow-deep",
    packs = {
      ["flow-deep"] = {
        type = "vscode",
        path = vim.fn.stdpath("data") .. "/real-icons/packs/flow-deep",
        manifest = "deep-png.json",
      },
    },
    integrations = {
      neo_tree = true,
      telescope = true,
    },
  },
}
