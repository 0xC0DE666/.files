-- KEYBINDS --
-- spacebar as leader.
vim.g.mapleader = " ";

-- open explorer.
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex);
-- go to last Buffer.
vim.keymap.set("n", "<leader>bp", vim.cmd.bp);
-- go to next Buffer.
vim.keymap.set("n", "<leader>bn", vim.cmd.bN);
-- write buffer.
vim.keymap.set("n", "<leader>w", vim.cmd.w);
-- close current window.
vim.keymap.set("n", "<leader>q", vim.cmd.quit);
-- write buffer and close window.
vim.keymap.set("n", "<leader>wq", vim.cmd.wq);
-- write buffer and close all windows.
vim.keymap.set("n", "<leader>wqa", vim.cmd.wqall);
-- go to terminal.
vim.keymap.set("n", "<leader>t", vim.cmd.terminal);
-- split window horizontal.
vim.keymap.set("n", "<leader>s", function() vim.cmd.wincmd("s") end);
-- split window vertical.
vim.keymap.set("n", "<leader>v", function() vim.cmd.wincmd("v") end);
-- move between split windows.
vim.keymap.set("n", "<leader>h", function() vim.cmd.wincmd("h") end);
vim.keymap.set("n", "<leader>j", function() vim.cmd.wincmd("j") end);
vim.keymap.set("n", "<leader>k", function() vim.cmd.wincmd("k") end);
vim.keymap.set("n", "<leader>l", function() vim.cmd.wincmd("l") end);
-- close current split.
vim.keymap.set("n", "<leader>c", vim.cmd.close);
-- go home in netrw.
vim.keymap.set("n", "<leader>gh", function() vim.cmd("Vexplore ~/") end);
