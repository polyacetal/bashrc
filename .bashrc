#alias
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#gitbashのスタイル書き換え

# git branch view
function git_branch() {
  s=$(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
  if [ ! "$s" = "" ]; then
    echo " ("$s")"
  fi
}

#Shell style Change
export PS1='\[\e[1;33m\]\u\[\e[1;32m\]@\h:\[\e[1;36m\]\w\[\e[1;31m\]$(git_branch)\[\e[0m\]\n\$' 

