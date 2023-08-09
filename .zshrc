source $HOME/.env
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws
         git
         kubectl
	 zsh-syntax-highlighting
	 zsh-completions
	 zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
#source /home/vamps/.oh-my-zsh/suraj/kube-ps1/kube-ps1.sh
#PROMPT='$(kube_ps1)'$PROMPT
KUBE_PS1_SYMBOL_USE_IMG=true

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias open="xdg-open"
alias jn="cd /home/vamps/Checkouts/table-detection-framework/notebooks; GOOGLE_APPLICATION_CREDENTIALS=/media/veracrypt1/cloud-run-testing-272918-1c08d0fd366f.json /home/vamps/exlvenv/bin/memray run --live -m jupyter notebook"
alias jnm="cd /home/vamps/Checkouts/suraj;/home/vamps/exlvenv/bin/jupyter notebook"
alias kc="kubectl"
alias kcg="kubectl get"
alias kcd="kubectl describe"
alias kcl="kubectl logs -f"
alias search='grep -rn --exclude-dir=venv --exclude-dir=env --exclude-dir=.git/'
alias less="less -S -N"
alias rcli="redis-cli"
alias redisforward='k port-forward svc/redis-master 6379:6379'
alias startredis="docker run -d -v /home/vamps/redisconf:/usr/local/etc/redis --name myredis -p 6379:6379 redis redis-server --appendonly yes --requirepass $REDISPASSWORD"
alias pc="pycharm-community &> /dev/null &"
alias doc="docker compose"
alias tailrr='source /home/vamps/exlvenv/bin/activate; gcloud alpha logging tail "resource.type=cloud_run_revision AND resource.labels.service_name=rent-rolls-api" --project cloud-run-testing-272918 --format="default(text_payload)"'
alias nano="nano -c"
alias edate="TZ='EST' date"
alias udate="date -u"
alias aiac="docker run --rm -it -e OPENAI_API_KEY=$OPENAI_API_KEY ghcr.io/gofireflyio/aiac"
alias tf="terraform"
alias adc="gcloud auth application-default login"
export PATH=/home/vamps/Downloads/pycharm-community-2021.3.1/bin:$PATH
export PATH=/bin:/usr/bin:/usr/local/bin:$PATH
export PATH=/home/vamps/Tools/dockerized/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=/home/vamps/Downloads/install/dockerized-v2.23.0-linux-x86_64/bin:$PATH
export PATH=/usr/local/go/bin:$PATH


# use new gke cloud auth plugin
export USE_GKE_GCLOUD_AUTH_PLUGIN=True


#export PYENV_ROOT=$HOME/.pyenv ; pyenv no longer installed

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/vamps/google-cloud-sdk/path.zsh.inc' ]; then . '/home/vamps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/vamps/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/vamps/google-cloud-sdk/completion.zsh.inc'; fi

# kubectl auto completion
[[ /bin/kubectl ]] && source <(kubectl completion zsh)
complete -F __start_kubectl kc

#aws auto completion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws


#custom function
cheat() {
    curl cheat.sh/$1
}

branch() {
    kubectl get pods | awk '{print $1}' | sed 1d | grep -E $1 | xargs -I {} kubectl describe pod '{}' | grep "Image:" | awk '{print $2}' | uniq  | cut -d "/" -f4,5 | cut -d ":" -f 1
}

timeit() {
    if [[ $# -lt 1 ]]; then
        echo "Usage: timit <doc_id> [<env>]"
        return 1
    fi
    BETTER_EXCEPTIONS=1
    doc_id=$1
    env=${2:-testing}
    /home/vamps/exlvenv/bin/python /home/vamps/Checkouts/suraj/rq-analysis/time-breakdown.py "$doc_id" "$env"
}


makepro() {
    org_id=$1
    /home/vamps/exlvenv/bin/python /home/vamps/scripts/change_to_pro.py "$org_id"
}
#shortcuts
#export do="--dry-run=client -o yaml"
#alias do="--dry-run=client -o yaml"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
