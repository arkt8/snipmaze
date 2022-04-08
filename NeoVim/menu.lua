-- You can use a local variable, but in this case you only will can
-- set the menus in the same file where menu function is.
-- Have a global point to place the menus give the possibility of
-- lazy loading the functions according with used file types or
-- plugins...
GlobalMenus = {}
GlobalMenus.tab = {
   tabs = function() vim.o.expandtab = false end,
   spaces = function() vim.o.expandtab = true end
}

function menu(menuname)
   local entries = {}
   local options = GlobalMenus[menuname];
   for i,_ in pairs(options) do table.insert(entries,i) end
   vim.ui.select(entries,{},function(c)
      if options[c] then options[c]() end
   end)
end

vim.api.nvim_set_keymap("n", "<C-x>", ':lua menu("tab")<Enter>', {noremap=true, silent=true})
