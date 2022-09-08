
if [[ $"uname -v" == "#1 SMP PREEMPT Fri Dec 10 13:53:37 WIB 2021" ]]
then
  proot distro login alpine
  exit
fi

source .bashsc

