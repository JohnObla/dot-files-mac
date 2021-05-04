function pe --description 'add prettier and eslint to node modules'
    yarn add --dev eslint prettier eslint-config-prettier
    yarn eslint --init
    rm -rf package-lock.json yarn.lock node_modules
    yarn
end