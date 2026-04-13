#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ls='eza --icons --long'
PS1='[\u@\h \W]\$ '
export PATH="$HOME/.local/bin:$PATH"

# Use starship
eval "$(starship init bash)"

# Load terminal color sequences (if exists)
if [ -f "$HOME/.config/matugen/colors/sequences.txt" ]; then
    cat "$HOME/.config/matugen/colors/sequences.txt"
fi

