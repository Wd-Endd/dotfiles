import os
from pathlib import Path
import psutil

videoDir = Path("~/Movies/").expanduser()
pidFile = videoDir / ".recording"
pid = None
icon = "󰻂 "

if os.path.exists(pidFile):
    with open(pidFile, "r") as f:
        icon = " "
        pid = f.read()
        f.close()

    if psutil.pid_exists(int(pid)):
        icon = " "

print(icon)
