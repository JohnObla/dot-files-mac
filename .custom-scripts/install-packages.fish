#!/usr/local/bin/fish

# install the n installer and node
curl -L https://git.io/n-install | bash -s -- -y

# update npm
npm install --global npm

# install all packages auto complete
npm install --global all-the-package-names

# install yarn
npm install --global yarn
