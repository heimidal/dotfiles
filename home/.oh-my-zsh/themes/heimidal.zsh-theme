# Based on wezm theme

function clean_rvm_prompt() {
  echo "$(rvm_prompt_info)" | sed -e 's/ruby-//' -e "s/\(@\)\([A-Za-z0-9\-_]*\)/%{$fg[red]%}\1\2%{$fg[reset_color]%}%{$fg[blue]%}%{$fg[reset_color]%}/"
}

function prompt_char {
    ls Gemfile >/dev/null 2>/dev/null && echo '‡' && return
    echo '%#'
}

PROMPT='$(git_prompt_info)%{$fg[blue]%}$(clean_rvm_prompt)%{$reset_color%}
%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}$(prompt_char)%{$reset_color%} '
RPROMPT='%{$fg[green]%}%~%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%}"
