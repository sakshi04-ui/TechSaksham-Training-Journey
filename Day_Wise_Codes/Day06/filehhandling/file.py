#Creating file by taking filename as input from user
file_name = input("Enter your file name")
f = open(f"{file_name}.txt","a")
print("File Created Successfully")

name = input("Enter your name: ")
Class = input("Enter the class in which you are studying: " )
roll = int(input("Enter your roll_no"))
age = int(input("Enter your age"))

f.write(f"\nName: {name} \nClass: {Class} \nRoll_No : {roll} \nAge: {age} \n*************************")
