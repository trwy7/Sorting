from tkinter.filedialog import askdirectory, askopenfilenames
import os, json, glob, requests, time
def clear():
    os.system('cls' if os.name == 'nt' else 'clear')
try:
    with open("filetypes.json", "r") as f:
        filetypes = dict(json.load(f))
except:
    print('Getting most recent filetypes. Please wait...')
    response = requests.get('https://raw.githubusercontent.com/trwy7/Sorting/main/filetypes.json')
    filetypes = dict(json.loads(response.text))


def folder():
    sortdir = askdirectory(title='Starting directory')
    if sortdir == '':
        print('No input')
        raise KeyError("Nothing was chosen")
    return glob.glob(sortdir + '/*.*')
        
def files():
    return list(askopenfilenames())

def sort(files):
    for file in files:
        print(f'found {file}')
    print('\n\nAll files above will be moved from its folder, and cannot be moved back. Please make sure it is correct.')
    choice = input('(Y/N)> ')
    if choice == 'Y' or choice == 'y':
        print('Running test run...')
        global testrun
        testrun = dict()
        global srtamnt
        srtamnt = int()
        global totalamnt
        totalamnt = int()
        global diramnt
        diramnt = int()
        for file in files:
            if os.path.isfile(file):
                try:
                    totalamnt = totalamnt + 1
                except KeyError:
                    totalamnt = 1
                for key, value in filetypes.items():
                    if file.endswith(key):
                        print(f'Match: {key} - {file}')
                        try:
                            srtamnt = srtamnt + 1
                        except KeyError:
                            srtamnt = 1
                        try:
                            testrun[value] = testrun[value] + 1
                        except KeyError:
                            testrun[value] = 1
                        break
            else:
                try:
                    diramnt = diramnt + 1
                except KeyError:
                    diramnt = 1
        print('\n')
        for folder, amnt in testrun.items():
            print(f'{folder}: {str(amnt)}')
        print(f'\n{srtamnt}/{totalamnt} were matched, others will be left in the folder. {diramnt} subdirectories were excluded and wont be copied.')
        choice = input('Continue (last time) (Y/N)> ')
        print('You now have to pick an ending directory (where to move the files). It must be on the same drive as the source')
        movedir = askdirectory(title='Ending directory')
        if movedir == '':
            print('No input')
            raise KeyError("Nothing was chosen")
        print(movedir)
        if choice == 'Y' or choice == 'y':
            for file in files:
                if os.path.isfile(file):
                    for key, value in filetypes.items():
                        if file.endswith(key):
                            a = file.replace('\\','/')
                            b = a.split('/')
                            c = b[-1]
                            print(f'Moving: {c}')
                            if not os.path.isdir(movedir + '/' + value):
                                os.makedirs(movedir + '/' + value)
                            os.rename(a, movedir + '/' + value + c)
                            break
    else:
        exit()

print('Which sorting method would you like to use?')
print('(1) Pick a folder (takes longer to process but recommended)')
print('(2) Manually pick files')
choice = input('> ')
if choice == '1':
    filesa = folder()
    sort(filesa)
elif choice == '2':
    filesa = files()
    sort(filesa)
else:
    print('invalid response, quitting')
    exit(1)