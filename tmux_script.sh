tmux new-session -d 'watch nvidia-smi'
tmux split-window -h -p 75 \; send-keys 'htop' C-m
tmux split-window -v
tmux select-pane -t 0
tmux split-window -v \; send-keys 'conda activate lg' C-m \; send-keys 'clear' C-m
tmux select-pane -t 3\; send-keys 'cd git/lg-vae/spair' C-m  \; send-keys 'conda activate lg' C-m \; send-keys 'clear' C-m
tmux a

