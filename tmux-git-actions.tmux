
  
#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_DIRECTORY=$PWD
tmux bind-key T run-shell "$CURRENT_DIR/scripts/tmux_git_get_repo.sh $CURRENT_DIRECTORY git-status"
tmux bind-key P run-shell "$CURRENT_DIR/scripts/tmux_git_get_repo.sh $CURRENT_DIRECTORY open-repository-browser"
tmux bind -n M-r run-shell "$CURRENT_DIR/scripts/tmux_git_get_repo.sh $CURRENT_DIRECTORY rename-window"
