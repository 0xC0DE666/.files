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
  { "neoclide/coc.nvim", branch = "release" },
  {
    "nvim-telescope/telescope.nvim", branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "preservim/nerdtree" },
  { "mbbill/undotree" },
  { "nvim-lualine/lualine.nvim" },
  { "lewis6991/gitsigns.nvim" },
  { "tpope/vim-fugitive" },
--{"sheerun/vim-polyglot"},
});

-- major
require("_lazy.coc");
require("_lazy.telescope");
require("_lazy.treesitter");
require("_lazy.harpoon");
require("_lazy.nerdtree");
require("_lazy.undotree");
require("_lazy.line");
require("_lazy.gitsigns");
