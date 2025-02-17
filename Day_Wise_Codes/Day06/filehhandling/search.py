f = open("dummy.txt", "r")
a = f.readlines()
name = input("enter word you want to check")

printFalse = False
for i in a:
    a1 = i.split()
    for j in a1:
        if j.lower() == name.lower():
            printFalse = True
            print("True - Found at index", a.index(i), a1.index(j))
            break
    else:
        continue  # Prevents "False" from printing multiple times
    
if printFalse == False:
    print("False")  # If word is not found in any line
