# sorin.zsh-theme
# screenshot: http://i.imgur.com/aipDQ.png

ICON_HOME=" "
ICON_GIT="" #  
ICON_GIT_DIRTY=""
ICON_GIT_ADDED=""
ICON_GIT_MODIFIED=""
ICON_GIT_DELETED=""
ICON_GIT_RENAMED=""
ICON_GIT_UNMERGED=""
ICON_GIT_UNTRACKED=""
USE_COLORS="true"

function set_vars() {
  if [[ "$USE_COLORS" == "true" ]]; then
    ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}$ICON_GIT%{$fg_bold[blue]%}  "
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""
    ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg[green]%}$ICON_GIT_ADDED%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg[blue]%}$ICON_GIT_MODIFIED%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg[red]%}$ICON_GIT_DELETED%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg[magenta]%}$ICON_GIT_RENAMED%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg[cyan]%}$ICON_GIT_UNMERGED%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[yellow]%}$ICON_GIT_UNTRACKED%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="  "
    ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="  "
    ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="  "
  else
    ZSH_THEME_GIT_PROMPT_PREFIX="$ICON_GIT  "
    ZSH_THEME_GIT_PROMPT_SUFFIX=" "
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""
    ZSH_THEME_GIT_PROMPT_ADDED=" $ICON_GIT_ADDED"
    ZSH_THEME_GIT_PROMPT_MODIFIED=" $ICON_GIT_MODIFIED"
    ZSH_THEME_GIT_PROMPT_DELETED=" $ICON_GIT_DELETED"
    ZSH_THEME_GIT_PROMPT_RENAMED=" $ICON_GIT_RENAMED"
    ZSH_THEME_GIT_PROMPT_UNMERGED=" $ICON_GIT_UNMERGED"
    ZSH_THEME_GIT_PROMPT_UNTRACKED=" $ICON_GIT_UNTRACKED"
    ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="AHEAD "
    ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="BEHIND "
    ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="DIVERGED "
  fi
}

function prompt_user() {
  if [[ "$USE_COLORS" == "true" ]]; then
    local USER_COLOR="%(!.%{$fg_bold[red]%}.%{$fg_bold[magenta]%})"
    echo "$USER_COLOR`whoami`%{$reset_color%}"
  else
    echo "`whoami`"
  fi
}

function prompt_host() {
  if [[ "$USE_COLORS" == "true" ]]; then
    echo "%{$fg_bold[yellow]%}%m%{$reset_color%}"
  else
    echo "%m"
  fi
}

function prompt_pwd() {
  if [[ "$USE_COLORS" == "true" ]]; then
    echo "%{$fg[green]%}${PWD/$HOME/$ICON_HOME}%{$reset_color%}"
  else
    echo "${PWD/$HOME/$ICON_HOME}"
  fi
}

function prompt_git() {
  echo "$(git_prompt_info)$(git_remote_status)"
}

function prompt_shell() {
  if [[ "$USE_COLORS" == "true" ]]; then
    echo "%(!.%{$fg_bold[red]%}#.%{$fg_bold[green]%}$)%{$reset_color%}"
  else
    echo "%(!.#.$)"
  fi
}

build_prompt() {

  local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"

  PROMPT='$(prompt_user) at $(prompt_host) in $(prompt_pwd) $(prompt_git)$(prompt_shell) '
  RPROMPT='${return_status}$(git_prompt_status)%{$reset_color%}'
}

set_vars
build_prompt