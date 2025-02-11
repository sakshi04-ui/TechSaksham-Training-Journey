### Morning Session

#### Setting Up VirtualBox with Ubuntu:
1. **Install VirtualBox**:
   - Download and install VirtualBox on your system.
2. **Create a New Virtual Machine**:
   - Click on `New`.
   - Add a name (e.g., `Ubuntu`).
   - Leave the machine folder address as is (do not change it).
3. **Select ISO Image**:
   - Locate the Ubuntu ISO file from its saved location.
   - Select it and click `Next`.
4. **Create User Account**:
   - Set username and password:
     - **Username**: your_username
     - **Password**: your_password
   - Click `Next`.
5. **Hardware Configuration**:
   - **Base Memory**: Allocate half of the available memory (check in Task Manager).
   - **Cores**: Allocate half of the available CPU cores.
   - Keep storage and other configurations as default.
   - Click `Start`.

#### Troubleshooting Errors:
- **Increase Display Size**:
  - Allocate more memory for display and maximize video memory.
  - Adjust screens to maximum.
- **Restart**:
  - Restart the virtual machine.
- If problems persist, consult GPT for assistance.

---

### Afternoon Session

#### Assessments:
1. **Baseline Assessment**:
   - Tested basic knowledge about resumes and related topics.
   - Questions included familiarity with Python, SQL, and other programming languages.
2. **Technical Assessment**:
   - 15 MCQs based on Python and C++ basics.

#### Linux Commands Learned:
1. **File and Directory Commands**:
   - `pwd`: Print the current working directory.
   - `ls`: List files in the directory.
   - `mkdir`: Create a new directory.
   - `touch`: Create a new file.
   - `cd destination_directory`: Change to a specific directory.
   - `cd ..`: Move to the parent directory.
   - `clear`: Clear the terminal screen.
   - `rm -r`: Remove directories and their contents.
   - `cat`: Concatenate and display file contents.
     - Example:
       ```bash
       cat > my_text.txt
       This is some text I'm writing in my file.
       Another line of text.
       Ctrl + D
       ```
2. **Text Editors**:
   - **vi**:
     - Enter Insert Mode: `i`.
     - Save and Exit: `:wq` (write and quit).
   - **nano**:
     - Open file: `nano my_data.txt`.
     - Save: `Ctrl + O` (Press Enter to confirm filename).
     - Exit: `Ctrl + X`.
3. **Miscellaneous**:
   - `mv`: Move or rename files.
   - `man command_name`: Get manual/help for a command.

---

### Programming Concepts:

#### Scripting:
1. **Script vs. Interpreted vs. Compiled Languages**:
   - **Script Language**: High-level programming executed directly (e.g., Python).
   - **Interpreted Language**: Code executed line-by-line by an interpreter.
   - **Compiled Language**: Code converted to machine language before execution.

2. **Procedure vs. Object-Oriented Languages**:
   - **Procedure-Oriented**: Focus on functions/procedures (e.g., C).
   - **Object-Oriented**: Focus on objects and classes (e.g., C++, Python).

#### Shell Scripting Basics:
1. **Writing Shell Scripts**:
   - Use `.sh` extension for script files.
   - Header: `#!/bin/bash`.
   - Example 1: Print a message:
     ```bash
     #!/bin/bash
     echo "Hello World!"
     ```
     - Save: `Ctrl + X`, `Ctrl + Y`, then `Enter`.
     - Execute:
       - Method 1: `chmod +x file_name.sh` (to grant permission) and then `./file_name.sh`.
       - Method 2: `bash file_name.sh` (no permission required).

2. **Arithmetic Operations**:
   - Example 2: Sum of three numbers:
     ```bash
     #!/bin/bash
     a=5
     b=10
     c=25
     sum=$((a+b+c))
     echo "Sum is $sum"
     echo "Addition of $a, $b, and $c is $sum"
     ```
   - Example 3: Multiplication of three numbers:
     ```bash
     #!/bin/bash
     a=5
     b=10
     c=25
     multi=$((a*b*c))
     echo "Multiplication of $a, $b, and $c is $multi"
     ```

#### Notes:
- **Variable Declaration**:
  - No spaces between variable name, `=` sign, and value.
  - Use `$` before variable names when printing values.
  - Perform operations using `(( ))`.

#### Adding Comments in Scripts:
1. **Single-line Comments**:
   ```bash
   # This is a single-line comment
   ```
2. **Multi-line Comments**:
   ```bash
   <<EOF
   This is a multi-line comment.
   Write as many lines as needed.
   EOF
   ```

