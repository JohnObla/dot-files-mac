local module = {}

function module.setup()
  require'nvim-tree'.setup {
    -- open the tree when running this setup function
    open_on_setup       = true,
    -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
    open_on_tab         = true,
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
      width = 40,
     -- if true the tree will resize itself after opening a file
      auto_resize = true,
    }
  }
end

return module
