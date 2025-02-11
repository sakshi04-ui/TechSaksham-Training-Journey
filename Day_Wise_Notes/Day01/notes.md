**Morning Session:**

1. **Installing VirtualBox:**
   - Click on **New**.
   - Add **Name**: `ubuntu`.
   - **Address**: Keep it the same, do not change it.
   - **ISO Image**: Navigate to the location where the Ubuntu file is stored, select the file, and click it.
   - Click **Next**.

2. **User Configuration:**
   - Give **Username**: `your_username`.
   - Set **Password**: `your_pass`.
   - Click **Next**.

3. **Hardware Configuration:**
   - **Base Memory**: Set to half of the available memory (check in Task Manager).
   - **Cores**: Allocate half of the available cores.
   - Keep **Storage** and other settings as is.
   - Click **Start**.

4. **Troubleshooting:**
   - If you encounter errors, try the following:
     - Increase the size allocated to **Display**.
     - Set **Video Memory** to the maximum.
     - Increase **Screens** to the maximum.
   - Restart the setup.
   - If problems persist, consider seeking help from **GPT**.

---

**Afternoon Session:**

1. **Assessments:**
   - **First Test**: Baseline assessment to evaluate basic knowledge about resumes and other topics.
   - **Second Test**: 15 MCQs covering basic Python and C++.

2. **Learning Commands:**
   - **Directory Management:**
     - `pwd`
     - `ls`
     - `mkdir`
     - `touch`
     - `cd destination_directory`
     - `cd ..`
     - `cd`
     - `clear`
     - `rm -r`
   
   - **File Operations:**
     - `cat` (Example):
       ```
       cat > my_text.txt
       This is some text I'm writing in my file.
       Another line of text.
       Ctrl + D
       ```
     - **Using vi Editor:**
       - Enter Insert Mode: `i`
       - Save and Exit:
         ```
         :wq  
         # "w": write (save), "q": quit
         ```
     - **Using nano Editor:**
       ```
       # Open a new file
       nano my_data.txt

       # Type content
       This is some text
       that I am writing
       into the file.

       # Save and Exit
       Ctrl + O  # Confirm filename
       Ctrl + X
       ```
   
   - **Other Commands:**
     - `mv`
     - `man -command_name`

3. **Concepts Covered:**
   - **Script Language, Interpreted Language, Compiled Language**.
   - **Procedure vs. Object-Oriented Language**.

4. **Shell Scripting Basics:**
   - Files use `.sh` extension.
   - To print, use `echo`.
   - **Header:** `#!/bin/bash`

   - **First Program:**
     ```bash
     #!/bin/bash
     echo "Hello World!"
     ```
     - Save: `Ctrl + X`, then `Ctrl + Y`, then `Enter`.
     - Execute:
       - Method 1: `./file_name.sh`
         - If permission denied, use: `chmod +x file_name.sh`.
       - Method 2: `bash file_name.sh` or `sh file_name.sh` (no permission needed).

5. **Mathematical Operations:**
   - **Addition:**
     ```bash
     a=5
     b=10
     c=25

     sum=$((a+b+c))
     echo "sum is $sum"
     echo "Addition of $a, $b, $c is $sum"
     ```
     - Ensure no spaces during variable declaration.
     - Use `$` to reference variables.
     - Use `(( ))` for operations.
   
   - **Multiplication:**
     ```bash
     a=5
     b=10
     c=25

     multi=$((a*b*c))
     echo "Multiplication of $a, $b, $c is $multi"
     ```

6. **Adding Comments:**
   - **Single-line Comment:**
     ```bash
     # This is a single-line comment
     ```
   - **Multi-line Comment:**
     ```bash
     <<COMMENT
     This is a multi-line comment.
     It spans multiple lines.
     COMMENT
     ```

