import os
import sys

cmdram="free -h | awk '$1~/Mem/{print $3}'"
cmdswap="free -h | awk '$1~/Swap/{print $3}'"

getram=os.popen(cmdram).read()
getswap=os.popen(cmdswap).read()

print(getswap, end = '')
print("It is a great day.")

# sys.stdout.write(getram, end='')
# sys.stdout.write(getswap)
