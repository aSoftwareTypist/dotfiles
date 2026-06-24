return {
  -- Fix wrong dependency: was "nvim-mini/mini.nvim" which doesn't exist
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-mini/mini.nvim",
    },
    ft = { "markdown" },
  },

  -- Disable format-on-save for markdown because prettier is not installed.
  -- Without this, conform.nvim wipes the buffer content when saving .md files.
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = {},
      },
    },
  },
}
