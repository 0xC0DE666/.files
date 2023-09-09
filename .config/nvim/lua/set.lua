vim.cmd("colorscheme spacegray");
vim.g.mapleader = ' '

vim.opt.encoding = 'utf-8';
vim.opt.hidden = true;
vim.opt.number = true;
vim.opt.updatetime = 50;

-- tab settings
vim.opt.tabstop = 2;
vim.opt.shiftwidth = 2;
vim.opt.softtabstop = 2;
vim.opt.autoindent = true;
vim.opt.expandtab = true;
vim.opt.smarttab = true;

-- backup settings
vim.o.nobackup = true;
vim.o.nowritebackup = true;
vim.o.noswapfile = true;

-- other
vim.o.background = 'light';
vim.o.splitright = true;
vim.o.splitbelow = true;
-- vim.opt.termguicolors = true

vim.wo.signcolumn = 'yes';
-- color shceme
-- vim.opt.termguicolors = true
-- vim.cmd.colorscheme('spacegray')
