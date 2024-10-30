return {
  "simrat39/rust-tools.nvim",
  config = function()
    local rt = require("rust-tools")
    rt.setup({
      server = {
        settings = {
          ["rust-analyzer"] = {
            inlayHints = {
              typeHints = true,
              parameterHints = true,
              chainingHints = true,
              enable = true
            }
          }
        }
      }
    })
    vim.api.nvim_set_keymap('n', '<leader>hi', '<cmd>lua require("rust-tools").inlay_hints.enable()<CR>', {
      noremap = true,
      silent = true,
      desc = "Enable hints"
    })
    vim.api.nvim_set_keymap('n', '<leader>hd', '<cmd>lua require("rust-tools").inlay_hints.disable()<CR>', {
      noremap = true,
      silent = true,
      desc = "Disable hints"
    })
  end,
  dependencies = {"neovim/nvim-lspconfig"}
}
