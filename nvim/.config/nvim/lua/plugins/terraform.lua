return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "terraform", "hcl" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        terraformls = {
          flags = {
            debounce_text_changes = 500,
          },
          -- Use the immediate parent directory as workspace root instead of
          -- the git root. Without this, terraform-ls receives rootPath=/git/iaac
          -- and walks the entire 1.5 GB repo (2,767 .tf files, 9,972 dirs).
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("*.tf", ".terraform")(fname)
              or vim.fn.fnamemodify(fname, ":h")
          end,
        },
      },
    },
  },
  {
    -- Disable terraform_validate: it shells out to the terraform binary on
    -- every change, which is what causes the freeze on complex .tf files.
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        terraform = {},
      },
    },
  },
}
