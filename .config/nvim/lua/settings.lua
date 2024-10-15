-- spacebar as leader.
vim.g.mapleader = " ";

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


-- ####################
-- BUFFER
-- ####################
-- show buffers.
vim.keymap.set("n", "<leader>bs", vim.cmd.buffers);
-- go to last buffer.
vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious);
-- go to next buffer.
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext);
-- delete buffer.
vim.keymap.set("n", "<leader>bd", vim.cmd.bd);
-- write buffer.
vim.keymap.set("n", "<leader>w", vim.cmd.w);
-- write all buffers.
vim.keymap.set("n", "<leader><S-w>", vim.cmd.wall);


-- ####################
-- WINDOW
-- ####################
-- split window horizontal.
vim.keymap.set("n", "<leader>s", function() vim.cmd.wincmd("s") end);
-- split window vertical.
vim.keymap.set("n", "<leader>v", function() vim.cmd.wincmd("v") end);
-- move between split windows.
vim.keymap.set("n", "<leader>h", function() vim.cmd.wincmd("h") end);
vim.keymap.set("n", "<leader>j", function() vim.cmd.wincmd("j") end);
vim.keymap.set("n", "<leader>k", function() vim.cmd.wincmd("k") end);
vim.keymap.set("n", "<leader>l", function() vim.cmd.wincmd("l") end);
-- close current window.
vim.keymap.set("n", "<leader>q", vim.cmd.quit);
-- close all windows.
vim.keymap.set("n", "<leader><S-q>", vim.cmd.qall);


-- ####################
-- TAB
-- ####################
-- new tab.
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew);
-- close tab.
vim.keymap.set("n", "<leader>tc", vim.cmd.tabclose);

-- ####################
-- EXPLORE
-- ####################
-- open explorer.
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex);
-- open ~ in explorer.
vim.keymap.set("n", "<leader><S-h>", function() vim.cmd("Texplore ~/") end);


-- ####################
-- SPECIAL
-- ####################
-- terminal mode.
vim.keymap.set("n", "<leader><S-t>", vim.cmd.terminal);
