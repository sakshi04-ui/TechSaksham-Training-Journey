#2 methods to create file

#Method 1 jismein humesha file close karna padega
f = open("Sakshi.txt","r")
print(f.read())
f.close()
#print(f.read()) #gives error as it was closed and we cannot access it 

#Method 2 : yaha close nhi karna padega
with open("Sakshi.txt","r") as f:
    print(f.read())