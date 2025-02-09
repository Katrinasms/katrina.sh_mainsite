---
layout: posts
title: My Journey with Automation Tool - Use of Cron
description: When I started working on web applications, I used to write my own CSS, and I found it pretty annoying to handle the responsiveness of the application.
lang: en
imageSrc: /assets/images/blog/cron-jobs.png
tag: []
mayLikes: [Setting-own-webserver]
---

### **My Struggle**

Like the SSL certificate for [penguingogo.com](penguingogo.com), it will normally expire after 90 days. 

There is a time, I forget to renew the certificate and fail to access the https of website. That's why a automation tool would be important for me.

### **Use of Cron**

With a need of automation tool for running certain command or script in a fixed interval, **Cron** is introduced.

**Cron** is a **powerful utility in Unix-based systems (like Linux)** that allows users to **schedule automated tasks**, known as "cron jobs," to run at specified intervals. It's an essential tool for system administrators and developers who need to automate repetitive tasks, such as backups, updates, and maintenance scripts.

### **Key Features of Cron**

- **Automation**: Automate routine tasks to improve efficiency and reduce manual intervention.
- **Scheduling Flexibility**: Schedule tasks to run at various intervals, from every minute to once a year.
- **User-Friendly**: Simple syntax for specifying schedules, making it accessible for users of all skill levels.

### **How Cron Works**

Cron uses a configuration file called the "crontab" (cron table) to manage scheduled tasks. Each entry in the crontab file specifies:
- **Time and Date**: When the task should run (minute, hour, day of the month, month, day of the week).
- **Command**: The actual command or script to be executed.

#### **My Use Case**

To use crontab for updating SSL certificate every 3 months.

**Step 1** 

- I created a shell script,```updateCertificate.sh```,  in ```~/scripts``` and included the required command:

    ```updateCertificate.sh
    getssl -f penguingogo.com
    ```

**Step 2** 

- I use ```crontab -e``` to introduce tasks about running the script every 3 month at 2:30AM by cron. And the crontab entry inside ```crontab -e``` looks like:

    ```plaintext
    30 2 * */3 * ~/scripts/updateCertificate.sh
    ```

    - **30 2**: Runs at 2:30 AM.
    - **\* \* \*/3 \***: Runs every 3rd month.
    - **~/scripts/updateCertificate.shh**: The script to be executed.

    If you have your own time interval want to set, highly recommend to use [https://crontab.guru/](https://crontab.guru/).
    It is a simple editor for cron schedule expressions.


### **Conclusion**
With these few simple steps, now, I can be care-free about expiration of the ssl certificate!
This method is also very useful for creating **constant backup**!

---