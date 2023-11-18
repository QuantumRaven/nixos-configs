  # Bash aliases

{ config, lib, ... }:

{
programs.bash.interactiveShellInit= ''
alias ap-do-inv="ansible-playbook -i do-inventory.ini"
alias path-backups="cd /mnt/hq/backups"
alias path-documents="cd /mnt/hq/documents"
alias path-downloads="cd /mnt/hq/downloads"
alias path-multimedia="cd /mnt/hq/multimedia"
alias path-hq="cd /mnt/hq"
alias path-iso="cd /mnt/kvm/iso"
alias path-kvm="cd /mnt/kvm"
alias path-nfs="cd /mnt/nfs"
alias path-dev="cd /mnt/hq/dev"
alias path-ansible="cd /mnt/hq/dev/ansible"
alias path-bash="cd /mnt/hq/dev/bash"
alias path-debian="cd /mnt/hq/dev/debian"
alias path-docker="cd /mnt/hq/dev/docker"
alias path-dotfiles="cd /mnt/hq/dev/dot-files"
alias path-fullstackdev="cd /mnt/hq/dev/full-stack-dev"
alias path-leanpub="cd /mnt/hq/dev/leanpub"
alias path-oreilly="cd /mnt/hq/dev/oreilly"
alias path-powershell="cd /mnt/hq/dev/powershell"
alias path-python="cd /mnt/hq/dev/python"
alias path-rhel="cd /mnt/hq/dev/rhel"
alias path-templates="cd /mnt/hq/dev/templates"
alias path-terraform="cd /mnt/hq/dev/terraform"
alias path-work="cd /mnt/hq/dev/work"
alias rsync="rsync -avhP"
alias srsync="sudo rsync -avhP"
alias gdrive="rclone mount google-drive: /mnt/nfs/google-drive/ &"
alias odrive="rclone mount ms-onedrive: /mnt/nfs/ms-onedrive/ &"
alias grep="grep -E --color=auto"
alias gh="history | grep"
alias dusize="du -sh * | sort -h"
alias ll="ls -lha --color=auto"
alias lbk="lsblk -o NAME,FSTYPE,LABEL,UUID,MOUNTPOINTS "
alias sus="sudo systemctl suspend"
alias zel-n="zellij -s";
alias zel-a="zellij attach"
alias zel-l="zellij list-sessions"
alias zel-k="zellij kill-session"
alias zel-ka="zellij kill-all-sessions"
alias nos-test="sudo nixos-rebuild test"
alias nos-switch="sudo nixos-rebuild switch"
'';
}
