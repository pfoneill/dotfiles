alias python2='winpty /c/Python27/python.exe'
alias conda='/c/users/pauloneill/anaconda3/condabin/conda.bat'

# winget package manager
function winget { cmd.exe /c "winget $1 $2 $3";}

# direnv hook
eval "$(direnv hook bash)"

# Auto-launch ssh-agent
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases
env=~/.ssh/agent.env
agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }
agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }
agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env