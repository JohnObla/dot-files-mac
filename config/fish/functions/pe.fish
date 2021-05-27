function pe --description 'add prettier and eslint to node modules, enable auto format on commit'
    yarn add --dev eslint prettier eslint-config-prettier
    yarn add --dev eslint-plugin-react @typescript-eslint/eslint-plugin \
      eslint-config-airbnb@latest eslint eslint-plugin-import \
      eslint-plugin-jsx-a11y eslint-plugin-react-hooks \
      @typescript-eslint/parser
    cp $HOME/.config/eslint-prettier/.eslintrc.js  $HOME/.config/eslint-prettier/.prettierrc.js  $HOME/.config/eslint-prettier/.lintstagedrc.js ./
    npx mrm@2 lint-staged
    json -I -f package.json -e 'delete this["lint-staged"]'
end
