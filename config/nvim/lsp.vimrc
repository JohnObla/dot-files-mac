" lsp config

" npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{}

" npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup{}

" no requirements
require'lspconfig'.bashls.setup{}

" npm install -g vscode-json-languageserver
require'lspconfig'.jsonls.setup{}

" npm install -g graphql-language-service-cli
require'lspconfig'.graphql.setup{}

" todo - add html and css