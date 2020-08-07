#!python3
import re
import sys

try:
    fn = sys.argv[1]
except IndexError:
    fn = "MYOB Premier v7.msi"

fp = open(fn, "rb")
bs = fp.read()
fp.close()
r = re.compile(b'Operating System = (.*?)[\x00-\x10]')

matches = r.findall(bs)

print("OSs supported: ")
matches_in_str = [buf.decode('ascii') for buf in matches]
matches_in_str = sorted(matches_in_str)
[print(s, sep='\n') for s in matches_in_str]
