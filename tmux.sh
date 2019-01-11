#!/bin/bash

SESSION=$1

tmux -2 new-session -d -s $SESSION -c ~
tmux split-window -t $SESSION:0 -c ~ -h
tmux select-pane -t $SESSION:0.0

for i in `seq 1 9`; do
  tmux new-window -t $SESSION -c ~
  tmux split-window -t $SESSION:$i -c ~ -h
  tmux select-pane -t $SESSION:$i.0
done

#tmux new-window -t $SESSION:1 -n 'Logs'
#tmux select-pane -t 0
#tmux send-keys "tail -f /vagrant/maximus.log" C-m
#tmux select-pane -t 1
#tmux send-keys "tail -f /vagrant/maximus-worker.log" C-m
#tmux split-window -v
#tmux resize-pane -D 20
#tmux send-keys "tail -f /vagrant/maximus-mojo.log" C-m
## Setup a CoffeeScript compiler/watchdog pane
#tmux select-pane -t 0
#tmux split-window -v
#tmux resize-pane -D 20
#tmux send-keys "coffee -o /vagrant/root/static/js/ -cw /vagrant/root/coffee/" C-m
#
## Setup a MySQL window
#tmux new-window -t $SESSION:2 -n 'MySQL' 'mysql -uroot'
#
## Set default window
#tmux select-window -t $SESSION:1
#
## Attach to session
#tmux -2 attach-session -t $SESSION