import os, time
from tkinter.filedialog import askdirectory
print('Make sure you know what you are doing, you have 5 seconds to CTRL-C. This will wipe out all subdirectories, and should only be used for testing.')
try:
    time.sleep(5)
except KeyboardInterrupt:
    print('Quitting...')
    exit()
wipedir = askdirectory(title='Wipe directory')
if wipedir == '':
    print('No input')
    raise KeyError("Nothing was chosen")
for root, dirs, files in os.walk(wipedir):
    for name in files:
        #print(root + '/' + name)
        os.rename(root + '/' + name, wipedir + '/' + name)