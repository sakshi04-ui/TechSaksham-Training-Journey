# How to delete file

import os

file = input("Which file you want to delete: ")

if os.path.exists(file):
    os.remove(file)
else:
    print("File not available")