local module = {}

function module.setup()
  require'nvim-tree'.setup {
    -- hijacks new directory buffers when they are opened.
    update_to_buf_dir   = true,
    -- hijack the cursor in the tree to put it at the start of the filename
    hijack_cursor       = true,
    -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
    update_cwd          = true,
    -- show lsp diagnostics in the signcolumn
    lsp_diagnostics     = true,

    view = {
      -- width of the window, can be either a number (columns) or a string in `%`
      width = 30,
     -- if true the tree will resize itself after opening a file
      auto_resize = true,
    }
  }
end

return module
