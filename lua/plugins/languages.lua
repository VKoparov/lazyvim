return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyright = {},
      },
    },
  },

  -- Configure and enable ts_ls directly.
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("ts_ls", {
        flags = { debounce_text_changes = 300 },
        on_attach = function(_, bufnr)
          local map = vim.keymap.set
          map("n", "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", { buffer = bufnr, desc = "Organize Imports" })
          map("n", "<leader>cR", "<cmd>TypescriptRenameFile<CR>", { buffer = bufnr, desc = "Rename File" })
        end,
      })

      vim.lsp.enable({ "ts_ls" })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
      })
    end,
  },

  -- Apply the JSON extra after the local LSP and parser overrides.
  { import = "lazyvim.plugins.extras.lang.json" },
}
