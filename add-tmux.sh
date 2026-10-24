#!/bin/bash
set -e

if echo '
# TMUX
if [[ -z "$TMUX" && $- == *i* ]] && command -v tmux &> /dev/null; then
    tmux attach-session -t main 2>/dev/null || tmux new-session -s main
fi' >> "$HOME/.bashrc"
then
    echo 'added tmux in .bashrc'

    cat >> "$HOME/.tmux.conf" <<'EOF'
# Enable mouse selection and scrolling
set -g mouse on

# Use vi keys in copy mode (required for the copy-mode-vi bindings below)
setw -g mode-keys vi

# 'v' to start a selection, 'y' to copy it to the Windows clipboard
bind -T copy-mode-vi v send-keys -X begin-selection
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "clip.exe"

# Copy automatically when you release the mouse after dragging
bind -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "clip.exe"
EOF
    echo 'tmux.conf added'

    tmux source-file "$HOME/.tmux.conf" 2>/dev/null || true
fi
