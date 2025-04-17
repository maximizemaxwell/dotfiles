# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
alias ida="/home/max/ida-free-pc-9.0/ida"
alias bninja="/home/max/binaryninja/binaryninja"
alias notes="cd /home/max/Documents/notes"
alias gdgoc_update="python3 /home/max/GDGoc_HUFS/studyops/update_weeks.py"
alias gdgoc_presenter="python3 /home/max/GDGoc_HUFS/studyops/presenter.py"
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# 한글입력기
export GTK_IM_MODULE=kime
export QT_IM_MODULE=kime
export XMODIFIERS=@im=kime
export EDITOR=vim
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# User configuration
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=5"
# export MANPATH="/usr/local/man:$MANPATH"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

bindkey -v
if [ -z "$TMUX" ]; then
  neofetch
fi

# venv
source ~/max-env/bin/activate



# Load Angular CLI autocompletion.
source <(ng completion script)
