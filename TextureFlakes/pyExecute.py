import sys
import json

def run():
    try:
        COMMAND = " ".join(sys.argv[1:])
        eval(COMMAND)
    except:
        print ("ERROR:")
        print (sys.exc_info())

if __name__ == "__main__":
    run()
