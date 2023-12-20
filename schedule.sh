script /home/karigalan/cronLogs/log_$(date | awk '{print $2 $3 $1}')
git status
git add --all
read -p "Enter the commit message(type abort to cancel)" commitMssg
if [[ $commitMssg = "abort"  ]]; then
  exit
  exit
else
  git commit -m "$commitMssg"
  git log
  read -p "Ready to push, do you consent?[y/n]" consent
  if [[ $consent = "y" ]];then
    git push origin master
  else
    echo "push Aborted"
exit
