autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source "${HOME}/.zsh/zgenom/zgenom.zsh"

zgenom autoupdate

ZSH_THEME="awesomepanda"
if ! zgenom saved; then
    zgenom ohmyzsh

    zgenom ohmyzsh plugins/git
    zgenom ohmyzsh themes

    zgenom load zsh-users/zsh-syntax-highlighting
    zgenom load zsh-users/zsh-autosuggestions

    zgenom save
fi

export HISTFILE="${HOME}/.cache/zsh/.zsh_history"
export HISTSIZE=10000
export ZCOMP_CACHE="$HOME/.cache/zsh"
export ZSH_COMPDUMP="$HOME/.cache/zsh/.zcompdump"
export MANPAGER="nvim +Man!"
