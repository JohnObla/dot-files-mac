" lsp config

" npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{}

" no requirements
require'lspconfig'.bashls.setup{}

" link for snippet support: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#cssls
" npm install -g vscode-css-languageserver-bin
require'lspconfig'.cssls.setup{}

" npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup{}

" npm install -g graphql-language-service-cli
require'lspconfig'.graphql.setup{}

" link for snippet support: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#html
" npm install -g vscode-html-languageserver-bin
require'lspconfig'.html.setup{}

" npm install -g vscode-json-languageserver
require'lspconfig'.jsonls.setup{}
