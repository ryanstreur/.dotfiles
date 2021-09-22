local tree_cb = require'nvim-tree.config'.nvim_tree_callback
local bindings = {
  edit = {"<CR>", "o", "<2-LeftMouse>", "l"},
  cd = {"<2-RightMouse>", "<C-]>"},
  vsplit = "<C-v>",
  split = "<C-x>",
  tabnew = "<C-t>",
  prev_sibling = "<",
  next_sibling = ">",
  parent_node = "P",
  close_node = {"<BS>",  "<S-CR>", "h"},
  preview = "<Tab>",
  first_sibling = "K",
  last_sibling = "J",
  toggle_ignored = "I",
  toggle_dotfiles = "H",
  refresh = "R",
  create = "a",
  remove = "d",
  rename = "r",
  full_rename = "<C-r>",
  cut = "x",
  copy = "c",
  paste = "p",
  copy_name = "y",
  copy_path = "Y",
  copy_absolute_path = "gy",
  prev_git_item = "[c",
  next_git_item = "]c",
  dir_up = "-",
  system_open = "s",
  close = "q",
  toggle_help = "g?",
}

local bindings_out = {}

for k, v in pairs(bindings) do
  table.insert(bindings_out, {
    key = v, cb = tree_cb(k)
  })
end

vim.g.nvim_tree_bindings = bindings_out
