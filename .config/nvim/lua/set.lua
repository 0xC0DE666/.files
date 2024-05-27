-- theme
vim.cmd("colorscheme spacegray");
vim.g.background = "dark";
vim.g.termguicolors = true;

-- windows
vim.g.splitright = true;
vim.g.splitbelow = true;
vim.g.splitkeep = "cursor";

-- backups
vim.g.nobackup = true;
vim.g.nowritebackup = true;
vim.g.noswapfile = true;
-- vim.opt.updatetime = 1000;

-- indenting
vim.opt.tabstop = 2;
vim.opt.shiftwidth = 2;
vim.opt.softtabstop = 2;
vim.opt.autoindent = true;
vim.opt.expandtab = true;
vim.opt.smarttab = true;

-- misc
vim.opt.encoding = "utf-8";
vim.opt.hidden = true;
vim.opt.number = true;

-- other
vim.wo.signcolumn = "yes";
