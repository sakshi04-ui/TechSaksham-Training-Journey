# Day-05  

## Morning Session  

We started with **OOPS** today.  
- **Methods** matlab hi **function**, and jb hum function mein parameters pass karte waise hi method mein parameters pass kar sakte but un parameters ko hum **attributes** bolte hai.  
- Used for **Reusability of Code**.  

### **6 Pillars of OOPS**  
1. Class  
2. Object  
3. Inheritance  
4. Abstraction  
5. Polymorphism  
6. Encapsulation  

### **Creating a Class**  
- When using OOPS, functions are called **methods**, and parameters are called **attributes**.  
- To call a class:  
  ```python
  obj = class_name()  # just like function
  ```  

### **Types of Methods**  
1. **Instance Method**  
   - Cannot be accessed without creating an object.  
2. **Class Method**  
   - Can be accessed without creating an object.  
3. **Static Method**  
   - Scope is related to that particular function only, i.e., variables of this class can be accessed by that function only.  

---

### Problem Statement: Banking Application 🏦  
**Features:**  
1. Withdraw money from their account.  
2. Deposit money into their account.  
3. Check their current balance.  
4. Exit the program.  

#### **Approach:**  
- **User Authentication:**  
  Validate the user's PIN against a predefined list (`l1`). If valid, retrieve the user's name and balance using the PIN's index.  

- **Interactive Menu:**  
  Present a menu for operations: withdraw, deposit, check balance, or exit. Continuously prompt until the user chooses to exit.  

- **Validation and Edge Cases:**  
  - Ensure withdrawal and deposit amounts are **non-negative**.  
  - Check for **sufficient balance** during withdrawals.  
  - Handle invalid menu choices and PIN errors **gracefully**.  

- **Dynamic Updates:**  
  Adjust the user’s balance dynamically based on the operations performed (**withdraw** or **deposit**). Provide **clear feedback** for every action.  

---

## Inheritance  

**Inheritance** allows a class (**child class**) to inherit properties and methods from another class (**parent class**).  

### **Types of Inheritance**  
1. **Single Inheritance** – One parent, one child.  
2. **Multiple Inheritance** – One child, multiple parents.  
3. **Multilevel Inheritance** – Parent → Child → Grandchild.  
4. **Hierarchical Inheritance** – One parent, multiple children.  
5. **Hybrid Inheritance** – Combination of the above types.  

---

## Afternoon Session  

### **Inheritance Concepts:**  
- **Multiple Inheritance**.  
- **Hierarchical Inheritance**.  
- **Hybrid Inheritance**.  

---

### Activity:  
Our instructor gave us a task to explain a problem along with its approach and code.  

#### **Problem Statement:**  
The goal is to find the length of the longest contiguous sequence of `1`s in a list of numbers, `nums`.  

#### **Example:**  
- **Input:** `[1, 1, 1, 0, 0, 0, 5, 1, 1, 1, 1, 1]`  
- **Output:** `5` (because the longest sequence of consecutive `1`s is `[1, 1, 1, 1, 1]`).  

---

#### **Approach:**  
1. Iterate through the list (`nums`):  
   - If the current element (`i`) is `1`, increment `count` by `1`.  
   - If not, compare `count` with `ans` to update the maximum sequence length (`ans`), and reset `count` to `0`.  
2. At the end of the loop, compare `ans` with `count` again to account for cases where the list ends with a sequence of `1`s.  
3. Return the maximum value of `ans` and `count`.  

#### **Code:**  
```python
def count_one(nums):
    count = 0
    ans = 0
    for i in nums:
        if i == 1:  # If the current number is 1, increase the count
            count += 1
        else:  # If the current number is not 1
            ans = max(ans, count)  # Update ans with the maximum of ans and count
            count = 0  # Reset count to 0
    return max(ans, count)  # Handle case where the list ends with a sequence of 1s

nums = [1, 1, 1, 0, 0, 0, 5, 1, 1, 1, 1, 1]
print(count_one(nums))  
```  

---

### What My Mates Did:  
- **Map Function** and **Filter Function** using Lambda.  
- Examples using `map` and implemented **sorting**.  
- GCD of 2 Numbers.  
- Printing the **second smallest** number.  
- **Pattern Printing:**  
  ```
              *  
            * * *  
          * * * * *  
        * * * * * * *  
      * * * * * * * * *  
    * * * * * * * * * * *  
  * * * * * * * * * * * * *  
  ```  
- **Multiple Inheritance.**  
- **Factorial.**  
- Finding the **missing number** for normal and square-containing lists.  
- Optimized code for **prime numbers**.  
- **Neon Number:**  
  A number where the sum of the digits of its square equals the original number.  
  **Example:** `9 → 9*9 = 81 → 8+1 = 9`.  

- **Krishnamurthy Number:**  
  A number where the sum of factorials of its digits equals the number itself.  

- **Magic Number:**  
  A number where the recursive sum of its digits reduces to `1`.  
  **Example:**  
  - `19 → 1+9 = 10 → 1+0 = 1` (**Magic Number** 🎩).  
  - `123 → 1+2+3 = 6` (**Not a Magic Number** ❌).  

- **Armstrong Number:**  
  A number where the sum of its digits raised to the power of the number of digits equals the number itself.  
  **Example:** `153 = 1^3 + 5^3 + 3^3 = 153`.  
```  
