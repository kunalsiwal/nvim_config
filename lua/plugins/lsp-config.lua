return {
  {
    "williamboman/mason.nvim",
    config=function()
      require("mason").setup()
    end},
  {
    'williamboman/mason-lspconfig.nvim',
    config=function()
        require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer","clangd","unocss","dockerls","docker_compose_language_service","eslint","jsonls","quick_lint_js","ltex","tailwindcss","tsserver" }})
      end
  },
  {
    "neovim/nvim-lspconfig",
    config=function()
      local lspconfig=require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.clangd.setup({})
      lspconfig.eslint.setup({})
      lspconfig.unocss.setup({})
      vim.keymap.set('n','K',vim.lsp.buf.hover,{})
      vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
      vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{})
    end
  }
}
