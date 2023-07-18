# af-magic-loskir.zsh-theme
# Repo: https://github.com/loskir/zsh-themes
# Direct Link: https://github.com/Loskir/zsh-themes/blob/main/af-magic-loskir.zsh-theme
# Based on af-magic
# Original Repo: https://github.com/ohmyzsh/ohmyzsh
# Original Direct Link: https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/af-magic.zsh-theme

# primary prompt
PS1="$FG[032]%~ ${FG[105]}%(!.#.»)%{$reset_color%} "
PS2="%{$fg[red]%}\ %{$reset_color%}"

# right prompt: return code, virtualenv, git/hg
RPS1="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
if (( $+functions[virtualenv_prompt_info] )); then
  RPS1+='$(virtualenv_prompt_info)'
fi
RPS1+=" ${FG[237]}\$(git_prompt_info)\$(hg_prompt_info)%{$reset_color%}"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX=""
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"

# virtualenv settings
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[075]}["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"
