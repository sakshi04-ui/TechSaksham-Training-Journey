## **Day 2: Tech Saksham Training**

### **Morning Session**

#### **Operators in Shell Scripting**
1. **Arithmetic Operators**: Perform mathematical operations.
2. **Logical Operators**: Compare conditions (e.g., OR = `).
3. **Comparison Operators**:
   - `-eq`: Equal to
   - `-gt`: Greater than
   - `-lt`: Less than
   - `-ge`: Greater than or equal to
4. **Bitwise Operators**: Operate on binary values.

#### **Conditional Statements**
- **Syntax for `if` Statement**:
  ```bash
  if [condition]; 
  then 
      commands
  else 
      commands
  fi
  ```
  - **Note**: Proper spacing is critical within brackets.

- **Problems Solved**:
  1. Check if a number is odd or even.
  2. Find the greater number between two inputs.
  3. Determine the greatest number among four numbers using logical operators.

- **Readonly Variables**:
  - `readonly var_name` keeps values constant.

#### **Loops**
1. **For Loop**:
   - **Syntax**:
     ```bash
     for variable in list
     do
         expressions
     done
     ```
   - Variants:
     1. List-based: `for var in {start..end}`
     2. C-style: `for ((start; condition; increment))`
   - Problems Solved:
     1. Multiplication tables using three different styles of `for` loops.
     2. Calculating factorial of a number.
     3. Fibonacci series generation.

2. **Nested For Loops**:
   - **Syntax**:
     ```bash
     for ((start; condition; increment))
     do
         for ((start; condition; increment))
         do
             expressions
         done
     done
     ```
   - Problems Solved:
     1. Printing tables from 1 to 100.
     2. Creating a "T" pattern.

---

### **Afternoon Session**

#### **While Loop**
- **Syntax**:
  ```bash
  start
  while [condition]
  do
      expressions
      increment/decrement
  done
  ```
  - Note: Use `-ne`, `-eq` instead of `<`, `>`.

- Problems Solved:
  1. Printing numbers in reverse order (from 10 to 1).
  2. Creating an "A" pattern:
  3. 
   - **Challenge**: Patterns in `while` loops were harder due to unfamiliarity compared to `for` loops. Spent ~30 minutes resolving this.

#### **Until Loop**
- **Syntax**:
  ```bash
  start
  until [condition]
  do
      expressions
      increment/decrement
  done
  ```
  - Runs until the condition becomes true.

---

### **Functions**
1. **Definition**:
   - Block of reusable code.
   - Types:
     1. Inbuilt (e.g., `echo`).
     2. User-defined.

2. **Syntax**:
   - Defining:
     ```bash
     function function_name() {
         expressions
     }
     ```
   - Calling:
     ```bash
     function_name
     ```
   - **Passing Arguments**:
     - Use `$1`, `$2`, etc., for arguments in functions.
     - Example:
       ```bash
       function add_numbers() {
           return $(($1 + $2))
       }
       add_numbers 10 20
       echo $? # Output: 30
       ```

3. **Additional Concepts**:
   - `$0`: Script name.
   - `$#`: Number of arguments passed.
   - Example:
     ```bash
     function display_args() {
         echo "Number of arguments: $#"
         echo "First argument: $1"
         echo "Second argument: $2"
     }
     display_args 10 20
     ```


### **Key Learnings**
1. Spacing in shell scripting is critical (e.g., within conditions, loops, and echo statements).
2. Understanding and applying nested loops and conditional structures effectively.
3. Gained clarity on `while` and `until` loops and their differences.
4. Improved proficiency in creating and using shell functions, arguments, and parameters.
