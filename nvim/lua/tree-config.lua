local tree_bindings = {
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
  dir_up = "-",
  system_open = "s",
  close = "q",
  toggle_help = "g?",
}

local bindings_out = {}
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

for k, v in pairs(tree_bindings) do
  table.insert(bindings_out, {
    key = v, mode = "n", cb = tree_cb(k)
  })
end

vim.g.nvim_tree_git_hl = 1

require"nvim-tree".setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  update_to_buf_dir   = true,
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  lsp_diagnostics     = false,
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = "open",
    args = {}
  },
  view = {
    width = 30,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = true,
      list = bindings_out
    }
  }
}

