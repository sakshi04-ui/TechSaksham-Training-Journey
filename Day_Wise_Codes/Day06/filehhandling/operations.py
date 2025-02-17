f = open("random.txt","r")
countLine = 0
a = f.readlines()
for i in a:
    countLine += 1

print(f"Total line in my file are: {countLine}")

#Count Words in file
countWord = 0
for i in range(len(a)):
    countWord += len(a[i].split())
print(f"Total Words in my line are: {countWord}")

# Count characters in file
countChar = 0
for i in range(len(a)):
    countChar += len(a[i])
print(f"Total Characters in my file is : {countChar}")

# Count spaces in file
space_count=0
for line in a:
        space_count += line.count(' ')  # Count spaces in each line

print(f"Total spaces: {space_count}")
# Find vowels and cponsonants in a file
f = open("random.txt","r")
a= f.readlines()
vowels = "aeiouAEIOU"
vowel = 0
conso = 0
for line in a:
    for char in line:
        if char in vowels:
            vowel += 1
        else:
            conso +=1
print(f"Total vowels: {vowel}")
print(f"Total Consonants: {conso}")


