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

export BROWSER=qutebrowser

export PATH="$PATH:~/.cargo/bin"
export PATH=/home/alex/.local/bin:/home/alex/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/lib/rustup/bin:/home/alex/.cargo/bin:~/.cargo/bin

# 3ds dev things
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export EVKITPPC=/opt/devkitpro/devkitPPC
