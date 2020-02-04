# carla-git
Repo for useful scripts written by Carla

#### Additional useful entries for your .bashrc
``` bash
alias pipeview="farm_use_hist; echo 'Priority:'; farm_priority; echo ''; echo 'Server stats:'; dbc_processlist"
alias farm_priority="bhpart | grep carlac | awk '{print \$3}' | uniq"
```
