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
vim.g.nobackup = true;
vim.g.nowritebackup = true;
vim.g.noswapfile = true;

-- other
vim.o.background = 'dark';
vim.o.splitright = true;
vim.o.splitbelow = true;
-- vim.opt.termguicolors = true

vim.wo.signcolumn = 'yes';
-- color shceme
-- vim.opt.termguicolors = true
-- vim.cmd.colorscheme('spacegray')
