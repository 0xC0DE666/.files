require('settings');
local fun = require("fun");         
                                    
                                    
local tbl = {1, 2, 3};              
print(tbl);                         
for k, v in ipairs(tbl) do          
  print(v);                         
end                                 
                                    
                                    
vim.api.nvim_create_user_command(   
  "Greet",                          
  function(opts)                    
    fun.hello(opts.args);           
  end,                              
  { nargs = "?", complete = "file" }
);                                  
                                    
vim.api.nvim_create_user_command(   
  "Tabs",                           
  fun.print_tabs,                   
  { nargs = "?", complete = "file" }
);
