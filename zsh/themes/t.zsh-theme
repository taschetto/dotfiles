#!/usr/bin/env zsh
##############################################################################
#                                                                            #
# illizian's zsh theme                                                       #
# A Powerline, agnoster & amuse inspired theme for ZSH                       #
#                                                                            #
# Dependencies                                                               #
# * Powerline-patched font (https://github.com/Lokaltog/powerline-fonts)     #
# * fonts-font-awesome package                                               #
#                                                                            #
##############################################################################

############################
# Variables                #
############################

# Icons
FA_I_GIT=" "
FA_I_UNSTAGED=""
FA_I_STAGED=""

FA_I_HOME=""
FA_I_ACTV=""
FA_I_FAIL=""
FA_I_ROOT="" # 

ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="↓"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="↑"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="⇅"

# Formatting
TXT_BOLD="\e[1m"
TXT_UNBOLD="\e[21m"

############################
# Prompt Segments          #
############################

CURRENT_BG='NONE'
SEGMENT_SEPARATOR=''

prompt_break() {
  echo -n "\n"
}
# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n "%{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%}"
  else
    echo -n "%{$bg%}%{$fg%}"
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

key_val() {
  [[ -n $3 ]] && echo -n "$1 ${TXT_BOLD}$2${TXT_UNBOLD}" || echo -n "$1 $2"
}

############################
# Functions                #
############################

prompt_status() {
  prompt_segment red white "%(1?; $FA_I_FAIL  ;)"
  [[ $(jobs -l | wc -l) -gt 0 ]] && prompt_segment yellow black " $FA_I_ACTV  "
}

prompt_dir() {
  prompt_segment black white " ${PWD/#$HOME/$FA_I_HOME }% "
}

prompt_git() {
  local ref dirty
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    dirty=$(parse_git_dirty)
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git show-ref --head -s --abbrev |head -n1 2> /dev/null)"
    if [[ -n $dirty ]]; then
      prompt_segment black red
    else
      gstatus=$(git_remote_status)
      if [[ "$gstatus" == "" ]]; then
        prompt_segment black green
      else
        prompt_segment black yellow
      fi
    fi

    setopt promptsubst
    autoload -Uz vcs_info

    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' get-revision true
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:*' stagedstr $FA_I_STAGED
    zstyle ':vcs_info:git:*' unstagedstr $FA_I_UNSTAGED
    zstyle ':vcs_info:*' formats ' %u%c'
    zstyle ':vcs_info:*' actionformats ' %u%c'
    vcs_info
    echo -n " ${ref/refs\/heads\//$FA_I_GIT }${vcs_info_msg_0_%% } "
    # key_val ${ref/refs\/heads\//$FA_I_GIT } ${vcs_info_msg_0_%% }

    gstatus=$(git_remote_status)
    if [[ "$gstatus" == "$ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE" ]]; then
      prompt_segment black red
    else
      if [[ "$gstatus" == "$ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE" ]]; then
        prompt_segment black green
      else
        prompt_segment black yellow
      fi
    fi
    echo -n "%B$gstatus%b"
  fi
}

prompt_context() {
  local user=`whoami`

  if [[ $UID -eq 0 ]]; then
    prompt_segment black blue
    echo -n "$TXT_BOLD$FA_I_ROOT $user@%m$TXT_UNBOLD "
  elif [[ "$user" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment blue black
    echo -n " $TXT_BOLD$user@%m$TXT_UNBOLD "
  fi
}

prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

prompt_cmd() {
  echo -n "$ "
}

############################
# Build the Prompt         #
############################

build_prompt() {
  if [[ ${COLUMNS} -gt 90 ]]; then
    build_lrg_prompt
  else
    build_sml_prompt
  fi
}
build_lrg_prompt() {
  prompt_context
  prompt_dir
  prompt_git
  prompt_end
  prompt_break
  prompt_cmd
}

build_sml_prompt() {
  build_lrg_prompt
}

PROMPT='$(build_prompt)'
