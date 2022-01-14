# set default editor to neovim 
set -gx EDITOR nvim

# Added by n-install (see http://git.io/n-install-repo).
# Original below
# export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  
set N_PREFIX "$HOME/n"
fish_add_path $N_PREFIX/bin

# set long path for prompt
set -g theme_short_path no

# add macports to path
fish_add_path /opt/local/bin

# add nvim to path
fish_add_path $HOME/nvim-osx64/bin

# add local bin to path
fish_add_path $HOME/bin

# add android env variables
set_android_env_variables

# AUTOGENERATED - add gcup (haskell) path options
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/john.obla/.ghcup/bin $PATH # ghcup-env

# add nx cloud env variable
set_nx_cloud_env_variable
