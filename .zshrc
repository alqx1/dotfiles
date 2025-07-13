autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source "${HOME}/.zsh/zgenom/zgenom.zsh"

ZSH_THEME="awesomepanda"
if ! zgenom saved; then
    zgenom ohmyzsh plugins/git
    zgenom ohmyzsh themes

    zgenom save
fi

source /home/alex/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/alex/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export HISTFILE="${HOME}/.cache/zsh/.zsh_history"
export HISTSIZE=10000
export ZCOMP_CACHE="$HOME/.cache/zsh"
export ZSH_COMPDUMP="$HOME/.cache/zsh/.zcompdump"
export MANPAGER="nvim +Man!"
export PATH=/home/alex/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
export PATH=/home/alex/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
