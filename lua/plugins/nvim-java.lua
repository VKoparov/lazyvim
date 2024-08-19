-- ~/.config/nvim/lua/plugins.lua

return {
  -- Other plugins...

  -- nvim-java plugin
  {
    "nvim-java/nvim-java",
    config = function()
      require("java").setup() -- Setup nvim-java before lspconfig

      -- Setup jdtls (Java Development Tools Language Server)
      require("lspconfig").jdtls.setup({
        -- Custom configuration for jdtls can go here
      })
    end,
  },

  -- More plugins...
}
