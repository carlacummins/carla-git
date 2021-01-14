# carla-git
Repo for useful scripts written by Carla

#### Additional useful entries for your .bashrc
Remember to replace the `$SHARED_USER1` and `$SHARED_USER2` with your own values

``` bash
bold=$(tput bold)
normal=$(tput sgr0)
alias pipeview="farm_use_hist; echo '${bold}Priority:${normal}'; farm_priority_shared; echo ''; echo '${bold}Server stats:${normal}'; dbc_processlist"
alias farm_priority_shared="bhpart AllHosts | grep -e $USER -e $SHARED_USER1 -e $SHARED_USER2 | awk '{print \$1 \"    \" \$3}'"
```
