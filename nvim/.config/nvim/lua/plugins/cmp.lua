-- Idk why Lazy always search for cmp.lua even if definition of nvim-cmp is within example.lua so i need to leave at it is now here to avoid tracebacks at the lazyvim start
return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
}
