# **🌟 Day 05 Learning 🌟**

## **Morning Session**  

### **OOPS Concepts**  
- **Methods** = Functions  
- Just like parameters in functions, in methods, parameters are called **attributes**.  
- **Reusability of Code** 🙌  

#### **6 Pillars of OOPS:**  
1️⃣ **Class**  
2️⃣ **Object**  
3️⃣ **Inheritance**  
4️⃣ **Abstraction**  
5️⃣ **Polymorphism**  
6️⃣ **Encapsulation**  

### **Key Points:**  
- **Creating a Class**:  
  - When using OOPS, functions are called **methods** and parameters are called **attributes**.  
  - To call a class:  
    ```python  
    obj = class_name()  
    ```  

- **Types of Methods:**  
  - **1️⃣ Instance Method:** Cannot be accessed without creating an object.  
  - **2️⃣ Class Method:** Can be accessed without creating an object.  
  - **3️⃣ Static Method:** Scope is limited to the particular function only.  

---

### **Problem Statement:** Banking Application 🏦  
**Features:**  
1️⃣ Withdraw money  
2️⃣ Deposit money  
3️⃣ Check current balance  
4️⃣ Exit the program  

**Approach:**  
- **PIN Validation**: Ensures secure access.  
- Handles edge cases:  
  - Invalid inputs ❌  
  - Negative amounts ❌  
  - Insufficient balance ❌  
- **Class-Based Design**: Encapsulates account-related operations.  
- **Dynamic Updates**: Adjusts balance based on operations.  

---

## **Afternoon Session**  

### **Inheritance Concepts**  
Inheritance allows a **child class** to inherit properties and methods from a **parent class**.  

#### **Types of Inheritance:**  
1️⃣ **Single Inheritance:** One parent, one child.  
2️⃣ **Multiple Inheritance:** One child, multiple parents.  
3️⃣ **Multilevel Inheritance:** Parent → Child → Grandchild.  
4️⃣ **Hierarchical Inheritance:** One parent, multiple children.  
5️⃣ **Hybrid Inheritance:** Combination of the above types.  

---

### **Instructor Activity:**  
We had to explain a problem with its **approach** and **code**.  

#### **Problem Statement:**  
Find the length of the longest contiguous sequence of `1`s in a list.  

#### **Approach:**  
1️⃣ Iterate through the list:  
   - If the current element is `1`, increment `count`.  
   - If not, update the maximum sequence length (`ans`) and reset `count`.  
2️⃣ At the end, compare `ans` with `count` to handle edge cases.  

#### **Code:**  
```python  
def count_one(nums):  
    count = 0  
    ans = 0  
    for i in nums:  
        if i == 1:  # Increment count for consecutive 1s  
            count += 1  
        else:  # Update max and reset count  
            ans = max(ans, count)  
            count = 0  
    return max(ans, count)  # Final comparison  

nums = [1, 1, 1, 0, 0, 0, 5, 1, 1, 1, 1, 1]  
print(count_one(nums))  
```  

---

### **What My Mates Did:**  
- **Map and Filter Functions** using Lambda.  
- Implemented challenges like:  
- Sorting 🗂️  
- GCD of 2 Numbers ✅  
- Printing the second smallest number ✌️  
- Optimized Prime Number Code 🔢  

---

### **Interesting Concepts:**  
- **Neon Number:**  
  A number where the sum of the digits of its square equals the original number.  
  **Example:** `9 → 9*9 = 81 → 8+1 = 9`  

- **Krishnamurthy Number:**  
  A number where the sum of factorials of its digits equals the number.  

- **Magic Number:**  
  A number where the recursive sum of its digits reduces to `1`.  
  **Example:**  
  - `19 → 1+9 = 10 → 1+0 = 1` (Magic Number 🎩).  
  - `123 → 1+2+3 = 6` (Not a Magic Number ❌).  

- **Armstrong Number:**  
  A number where the sum of its digits raised to the power of the number of digits equals the number itself.  
  **Example:** `153 = 1^3 + 5^3 + 3^3 = 153`.  

---

### **Pattern Printing:**  
```
            *  
          * * *  
        * * * * *  
      * * * * * * *  
    * * * * * * * * *  
  * * * * * * * * * * *  
* * * * * * * * * * * * *  
```  

It was a day full of exciting **OOPS learning** and challenging problems! 🚀
