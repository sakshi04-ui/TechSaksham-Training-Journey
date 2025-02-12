### **Day 2: Tech Saksham Training**  

#### **Morning Session**  

Today, we delved deeper into shell scripting and explored various types of operators and their functionalities:  

1. **Arithmetic Operators**: Used for mathematical operations.  
2. **Logical Operators**: Compare conditions rather than values. Examples:  
   - `AND`: `&&`  
   - `OR`: `` ` `` (single backtick)  
   - `NOT`: `!` (single exclamation)  
3. **Comparison Operators**: Compare values. Examples:  
   - Equal to: `-eq`  
   - Greater than: `-gt`  
   - Less than: `-lt`  
   - Greater than or equal to: `-ge`  
4. **Bitwise Operators**: Operate on binary values or conditions by first converting values to binary.  

#### **Syntax for Conditional Statements**  

Shell scripting lacks indentation or braces to define blocks of code. Instead, commands after `then` are treated as the block until `fi` is encountered.  

**Syntax for `if` condition:**  
```sh
if [condition];  
then  
  commands/expressions  
else  
  commands/expressions  
fi  
```

##### **Learnings from Problems**  

1. **Odd-Even Check**:  
   Learned that spacing is critical in shell scripting. Errors often occur due to improper spacing between operators.  

   Input can be taken using:  
   ```sh
   read -p "Message for input" var_name  
   # Another way:
   read var_name  
   ```  

2. **Finding the Greater Number Between Two Numbers**:  
   Understood how to handle multiple `if-else` conditions.  

**Syntax for multiple `if-else` statements:**  
```sh
if [condition];  
then  
  commands/expressions  
elif [condition];  
then  
  commands/expressions  
else  
  commands/expressions  
fi  
```

3. **Finding the Greatest Number Among Four Numbers Using Logical Operators**:  
   Emphasized the importance of proper spacing within `[ ]` brackets.  

**New Concepts:**  
- **Readonly Variables**: Declaring a variable as `readonly` prevents its value from being modified later.  

---

#### **Loops**  

1. **For Loop**  

Three ways to implement a `for` loop:  
- Using a list:  
  ```sh
  for variable in list;  
  do  
    expressions  
  done  
  ```  
- Using a range:  
  ```sh
  for variable in {start..end};  
  do  
    expressions  
  done  
  ```  
- Using initialization, condition, and increment:  
  ```sh
  for ((start; condition; increment));  
  do  
    expressions  
  done  
  ```  

**Problems Solved:**  
- **Table of 2, 3, 4** using all three `for` loop techniques.  
- **Factorial of a Number**: Learned the importance of spacing after `echo`. Example:  
  ```sh
  echo "message"  
  ```  
- **Fibonacci Series**: Improved understanding of iterative logic.  

2. **Nested Loops**  
   Example: Printing tables from 1 to 100 using nested loops.  

**Syntax:**  
```sh
for ((start; end; increment));  
do  
  for ((start; end; increment));  
  do  
    expressions  
  done  
done  
```  

3. **While Loop**  
   **Syntax:**  
   ```sh
   while [condition];  
   do  
     expressions  
     increment/decrement  
   done  
   ```  
   Solved problems like:  
   - Printing numbers in reverse order (1 to 10).  
   - Creating patterns, including an "A" pattern, which was challenging but cleared many concepts.  

4. **Until Loop**  
   Similar to `while` loop but executes until the condition becomes true.  

---

#### **Functions**  

**Types of Functions:**  
1. **Inbuilt Functions**: Predefined, e.g., `echo`.  
2. **User-defined Functions**: Custom functions created by the user.  

**Important Notes:**  
- Function names in shell scripting are case-sensitive.  
- No spaces are allowed in function names.  

**Syntax for Declaring a Function:**  
```sh
function function_name() {  
  # expressions  
}  
```  

**How to Call a Function:**  
Simply type the function name.  

**Passing Arguments:**  
Arguments are passed directly when calling the function, while parameters are used when declaring it.  

---

This session was both insightful and challenging, especially with practical problems that reinforced the importance of attention to detail in shell scripting. All codes are available on GitHub for further reference.  
