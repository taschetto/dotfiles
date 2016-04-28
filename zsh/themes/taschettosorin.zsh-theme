# sorin.zsh-theme
# screenshot: http://i.imgur.com/aipDQ.png

ICON_GIT=""
ICON_ADDED=""
ICON_MODIFIED=""
ICON_DELETED=""
ICON_RENAMED=""
ICON_UNMERGED=""
ICON_UNTRACKED=""

build_rprompt() {
  if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    RPROMPT='${return_status}$(git_prompt_status)%{$reset_color%}'

    ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} $ICON_ADDED"
    ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} $ICON_MODIFIED"
    ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} $ICON_DELETED"
    ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} $ICON_RENAMED"
    ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} $ICON_UNMERGED"
    ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} $ICON_UNTRACKED"
  else
    RPROMPT='${return_status}$(git_prompt_status)'

    ZSH_THEME_GIT_PROMPT_ADDED=" $ICON_ADDED"
    ZSH_THEME_GIT_PROMPT_MODIFIED=" $ICON_MODIFIED"
    ZSH_THEME_GIT_PROMPT_DELETED=" $ICON_DELETED"
    ZSH_THEME_GIT_PROMPT_RENAMED=" $ICON_RENAMED"
    ZSH_THEME_GIT_PROMPT_UNMERGED=" $ICON_UNMERGED"
    ZSH_THEME_GIT_PROMPT_UNTRACKED=" $ICON_UNTRACKED"
  fi
}

build_prompt() {
  if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
    local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"

    PROMPT='%{$fg[magenta]%}`whoami`%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[green]%}${PWD/#$HOME/ }% $(git_prompt_info) %(!.%{$fg_bold[red]%}#.%{$fg_bold[green]%}$)%{$reset_color%} '

    ZSH_THEME_GIT_PROMPT_PREFIX=" $ICON_GIT  "
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
    ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
  else
    MODE_INDICATOR="❮❮❮"
    local return_status="%(?::⏎)"

    PROMPT='%c$(git_prompt_info) %(!.#.$) '
  fi
}

build_prompt
build_rprompt