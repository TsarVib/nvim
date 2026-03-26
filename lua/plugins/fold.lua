return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  config = function()
    vim.o.foldcolumn = '1' -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }
    local language_servers = vim.lsp.get_clients() -- or list servers manually like {'gopls', 'clangd'}
    for _, ls in ipairs(language_servers) do
      require('lspconfig')[ls].setup {
        capabilities = capabilities,
      }
    end
    require('ufo').setup {
      provider_selector = function(bufnr, filetype, buftype)
        -- If it's python, use treesitter and indent as fallback
        if filetype == 'python' then
          return { 'treesitter', 'indent' }
        end
        -- For everything else, try LSP first
        return { 'lsp', 'indent' }
      end,
    }

    -- require('ufo').setup {
    --   provider_selector = function(bufnr, filetype, buftype)
    --     return { 'treesitter', 'indent' }
    --   end,
    -- }
  end,
}
