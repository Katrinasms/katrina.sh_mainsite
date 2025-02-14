---
layout: posts
title: My Journey with Workflow Automation Tool - Use of Telegram Bot
description: I tried to use airdrop, but the format of photos are .HEIC, not a normal web broswer support format and the size of photos is HUGE!
lang: en
imageSrc: /assets/images/blog/telegram-bot.png
tag: []
mayLikes: [Use-of-gitub-action]
---

### **Background**

After setting up the [server](https://katrina.sh/en/post/2025-02-03-setting-own-webserver.html), travel blog with [Jekyll](https://katrina.sh/en/post/2025-02-05-use-of-jekyll.html) and [Bulma](https://katrina.sh/en/post/2025-02-08-use-of-bulma.html), and [using GitHub Action](https://katrina.sh/en/post/2025-02-11-use-of-gitub-action.html) for ease and standardization of the workflow, 

I can finally focus on creating my travel articles.

### **My Struggle**

Since it is a travel blog, I need to constantly upload photos from my iPhone.

I tried to use Airdrop, but the format of the photos is `.HEIC`, which is not supported by normal web browsers, and the size of the photos is HUGE!

### **Use of Telegram Bot**

Since the photo uploading task occurs for every article, I needed to find a better way to speed up the process (convert photos to a more common format and compress their size).

Considering my habits, I want to choose the photos to post in the article from my phone when I am free. Using a Telegram bot is a better option for me.

Since [Telegram Bot](https://core.telegram.org/bots) has an API that supports many different use cases and it's free, I decided to use it.

### **My Use Case**

To be honest, this was my first time using a Telegram bot. I felt pretty excited but also worried that it would be hard to implement.

Surprisingly, I found a nice article that was pretty simple and taught me how to implement a Telegram bot using PHP.

Nice article I found: [How to Build a Telegram Bot Using PHP in Under 30 Minutes](https://nordicapis.com/how-to-build-your-first-telegram-bot-using-php-in-under-30-minutes/#:~:text=Make%20sure%20that%20you%20include,is%20now%20up%20and%20running)

## **Step 1: Follow the tutorial for the basic setup**

I followed the tutorial, set up the bot with BotFather, got the API token, and then wrote the logic in PHP on my server to connect the bot with my server's PHP code.

## **Step 2: Create my own logic for my use case**

I added my own logic to receive photos from the Telegram bot, compress them, and change the format to .jpg.

## **Step 3: Write a script on my local computer to download the images from the server**

I then wrote a simple script on my local computer to download the compressed images from my server. And **DONG DONG**, I can use them in my [travel blog](penguingogo.com) :)!! All the photos you find on this website are uploaded using this process!

### **My Thoughts**

I feel very happy that I was able to make use of a new skill (Telegram bot) and integrate it into my workflow. This has made my process of creating articles faster and allowed me to learn something new. :)

---