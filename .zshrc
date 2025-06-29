

# source ~/.bash_aliases

# Load rbenv
export PATH="$HOME/.rbenv/bin:$HOME/.local/bin:$PATH"
#eval "$(rbenv init - zsh)"

if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

# enhancd config
#export ENHANCD_COMMAND=cd
#export ENHANCD_FILTER=fzy:percol:peco:fzf
#export ENHANCD_DOT_SHOW_FULLPATH=1

#export ENHANCD_FILTER=peco:percol:gof:fzf

# プラグインを定義する
zplug "zsh-users/zsh-autosuggestions"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

# コマンドも管理する
# グロブを受け付ける（ブレースやワイルドカードなど）
zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"

# こんな使い方もある（他人の zshrc）
zplug "tcnksm/docker-alias", use:zshrc

# Vanilla shell
zplug "yous/vanilli.sh"

# Additional completion definitions for Zsh
zplug "zsh-users/zsh-completions"

# Load the theme.
zplug "yous/lime"

# Syntax highlighting bundle. zsh-syntax-highlighting must be loaded after
# excuting compinit command and sourcing other plugins.
zplug "zsh-users/zsh-syntax-highlighting"

# ZSH port of Fish shell's history search feature
# zplug "zsh-users/zsh-history-substring-search"
# Better history searching with arrow keys
if zplug check "zsh-users/zsh-history-substring-search"; then
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
#    bindkey "$terminfo[kcuu1]" history-substring-search-up
#    bindkey "$terminfo[kcud1]" history-substring-search-down
fi

# Tracks your most used directories, based on 'frecency'.
zplug "rupa/z", use:"*.sh"

# enhacd 
#zplug "b4b4r07/enhancd", use:init.sh

## A next-generation cd command with an interactive filter
zplug "junegunn/fzf-bin", \
    as:command, \
    rename-to:"fzf", \
    from:gh-r

# A next-generation cd command with an interactive filter
zplug "jhawthorn/fzy", \
    as:command, \
    rename-to:fzy, \
    hook-build:"
    {
        make
        sudo make install
    }"

# This plugin adds many useful aliases and functions.
zplug "plugins/git",   from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
# インストールする
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# Lime theme settings
export LIME_DIR_DISPLAY_COMPONENTS=2

# for Mac
# Add color to ls command
# export CLICOLOR=1

# NeoVim config
# export XDG_CONFIG_HOME=$HOME/.xdgconfig

#if [ -e "$HOME/.rbenv" ]; then
#  eval "$(rbenv init - zsh)"
#fi

# Set GOPATH for Go
# if command -v go &> /dev/null; then
#   [ -d "$HOME/go" ] || mkdir "$HOME/go"
#   export GOPATH="$HOME/go"
#   export GOROOT=/usr/local/opt/go/libexec
#   export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"
# fi

# Set PATH for GAE
# export PATH=$HOME/go/appengine:$PATH


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


