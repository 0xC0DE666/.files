local lazy = {
  path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim",
  config = {}
};
vim.opt.rtp:prepend(lazy.path);

if not vim.loop.fs_stat(lazy.path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazy.path,
  });
end

require("lazy").setup({
  -- major
  {
    "nvim-telescope/telescope.nvim", branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "ThePrimeagen/harpoon", 
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "mbbill/undotree" },
  { "tpope/vim-fugitive" },
  { "neoclide/coc.nvim", branch = "release" },
  -- minor
  { "nvim-lualine/lualine.nvim" },
  { "lewis6991/gitsigns.nvim" },
--svelte
  -- {"sheerun/vim-polyglot"},
  -- {"evanleck/vim-svelte"},
});

-- major
require("_lazy.telescope");
require("_lazy.treesitter");
require("_lazy.harpoon");
require("_lazy.undotree");
-- minor
require("_lazy.line");
require("_lazy.gitsigns");
