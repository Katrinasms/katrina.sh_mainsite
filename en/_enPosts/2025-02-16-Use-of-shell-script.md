---
layout: posts
title: My Journey with Workflow Automation Tool - Use of Shell Script
description: When I was working on my travel blog or other side projects, I often faced the following challenges
lang: en
imageSrc: /assets/images/blog/gnu-bash-logo.png
tag: []
mayLikes: [Use-of-telegram-bot]
---

### **My Struggle**
When I was working on my travel blog or other side projects, I often faced the following challenges:
1. **Repetitive Tasks**: When handling repetitive tasks (especially in the terminal), I had to keep typing the same **sequence of commands**, like `cd xxx`, `cp xx xx`, or `ssh xxx`. While these commands are not difficult, they are quite repetitive.

2. **File Format and Compression**: Sometimes, I needed to handle image/video format changes (e.g., converting video to GIF, `.mov` to `.mp4`, or extracting the soundtrack from a video) or compress files. Using online free tools often took longer and didn't always provide the desired results. Additionally, uploading sensitive data to online tools is not a good practice.

### **Using Shell Scripts**
I discovered that both of the above problems could be easily solved by using shell scripts (for Linux/MacOS users).

### **Introduction to Shell Scripts**
A shell script is a text file that contains a sequence of commands for a Unix-based operating system's shell to execute. These commands can perform a variety of tasks, such as file manipulation, program execution, and text processing. Shell scripts are written using a shell scripting language like Bash, which is commonly used in Linux and macOS environments.

### **Benefits of Using Shell Scripts**

| **Reason**                   | **Description**                                                                   |
|------------------------------|-----------------------------------------------------------------------------------|
| **Automation**               | Shell scripts help automate repetitive tasks, saving you time and reducing errors.|
| **Efficiency**               | Run multiple commands with a single script, making complex tasks easier and quicker.|
| **Flexibility**              | Use them for many tasks, from simple file operations to complex system administration.|
| **Portability**              | Shell scripts work on any Unix-based system without changes, making them easy to share and use on different machines.|
| **Powerful Text Processing** | They offer strong tools for handling and processing text files directly from the command line.|
| **Simplified Troubleshooting** | Automate diagnostic tasks, making it easier to identify and fix issues.|
| **Learning**                 | Writing shell scripts helps you understand the operating system better and improves your problem-solving skills.|
|------------------------------|-----------------------------------------------------------------------------------|

### **My Use Case**
1. **Automating Command Sequences**: I used shell scripts to put all my command-line sequences into one `.sh` file. Then, I ran `chmod +x ./script.sh` to give the script execution permissions. Now, instead of typing each command line by line, I can simply run the script (`./script.sh`), and it handles the sequence of commands for me.

2. **Handling Media Files**: For video/photo handling tasks, I created corresponding shell scripts based on my use case. I often asked generative AI models (like deepSeek, Copilot, ChatGPT) for help in producing the code. This allows me to run photo/video compression and format-changing tasks locally on my Mac.

### **My Thoughts**
To be honest, I am a newbie to shell scripting, but using it with the help of generative AI has significantly enhanced my workflow. I highly recommend this method to optimize your workflow and utilize the full power of your computer.

---