if [[ -t 0 ]]; then
  stty stop undef
  stty start undef
fi

export EDITOR='/usr/bin/vim'
export PAGER='/usr/bin/lv -c'

alias ls='ls -aF --color=always'
alias rm='rm -f'
alias less='lv -c'
