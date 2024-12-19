-- ####################
-- GENERAL
-- ####################
vim.o.compatible = false;
vim.o.encoding = 'utf-8';
vim.o.termguicolors = true;

vim.opt.filetype = "on";
vim.opt.path:append("**"); -- NB
vim.opt.wildmenu = true; -- NB

-- ####################
-- LOOKS
-- ####################
vim.g.background = "dark";
vim.cmd("syntax on");
vim.cmd("colorscheme spacegray");
-- vim.cmd('colorscheme habamax') -- habamax, retrobox, sorbet, vim
vim.cmd('filetype plugin indent on');

-- ####################
-- WINDOW
-- ####################
vim.g.splitright = true;
vim.g.splitbelow = true;
vim.g.splitkeep = "cursor";

-- ####################
-- NUMBERING
-- ####################
vim.wo.number = true;
vim.wo.relativenumber = true;

-- ####################
-- BACKUPS
-- ####################
vim.g.nobackup = true;
vim.g.nowritebackup = true;
vim.g.noswapfile = true;
-- vim.opt.updatetime = 1000;

-- ####################
-- SPACING
-- ####################
vim.opt.autoindent = true;
vim.opt.smartindent = true;
vim.opt.expandtab = true;
vim.opt.smarttab = true;
vim.opt.tabstop = 2;
vim.opt.shiftwidth = 2;
vim.opt.softtabstop = 2;

-- ####################
-- MISC
-- ####################
vim.opt.number = true;

-- ####################
-- OTHER
-- ####################
vim.wo.signcolumn = "yes";
