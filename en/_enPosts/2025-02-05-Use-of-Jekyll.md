---
layout: posts
title: My Journey with Jekyll - Steps and Insights for Self-Hosting a Static Site
description: But when I wanted my website live — when it came to hosting the website — I had very little idea about what I could do.
lang: en
imageSrc: /assets/images/blog/jekyll-og.png
mayLikes: [Setting-own-webserver]
---

### **My Struggle:**

Nowadays, most of the beautiful online tutorials are teaching JavaScript and React frameworks.

I still remember my first serious website, [https://penguintravelworld.com/](https://penguintravelworld.com/), which I created by following YouTube tutorials. I used create-react-app to build it and Express.js for the backend.

These are amazing tools, and I was able to create a beautiful UI and UX in a reasonable time. I also tried to create the backend in Express.js (testing it myself), and it worked locally on my machine.

> But when I wanted my website live — when it came to hosting the website — I had very little idea about what I could do.

As usual, I followed some articles and tutorials about using Vercel, which is free, which is good. For my backend in Express.js, I didn't know where I could host it. Since free hosting on Heroku is no longer available, I ended up using a site called railway.com to host it, which cost around \$10 per month for hosting a single Git repository. This isn't a big amount, but as it is more like a passionate project, I was preferring some free or cheap resources.

And for the domain name, I used GoDaddy, which in the end cost me a lot.

**TL;DR:** Although I created a website using create-react-app and Express.js, my lack of knowledge limited me to using third-party web hosting services to launch the frontend and backend, and it cost me money.


### **What I Learned:**

So after some days, I came up with another idea about hosting my own travel blog, as I do want to record and share my experiences in traveling. Thanks to my very experienced friend, he taught me many fundamental ways to create a website. Although most of the frameworks and languages are from quite a long time ago (when you have an error and search on StackOverflow, most of the questions and answers are more than 10 years old).

But I now have a better understanding of server-side rendering and client-side rendering, HTTP protocols, and the differences between HTTP/1, 2, and 3.

So in a previous article, I mentioned how I got my domain name, set up a Linux and Apache server, and obtained the SSL certificate. In this article, I am going to explain what I used to create my website.


So, I used a static site generator—[Jekyll](https://jekyllrb.com/) (obviously recommended by my friend)—which is an open-source package running on Ruby.

1. **Install Jekyll** - [https://jekyllrb.com/docs/installation/](https://jekyllrb.com/docs/installation/)
   - Since I'm using macOS, I used Homebrew to download it. Let's just **follow the guidelines in the official documentation**; 
   - Jekyll's documentation is well-written (it is more reliable than random articles).

2. **Follow the Step-by-Step Tutorial** - [https://jekyllrb.com/docs/step-by-step/01-setup/](https://jekyllrb.com/docs/step-by-step/01-setup/)
   - Instead of directly writing my own travel blog, to better understand Jekyll, I started by **following the tutorial on the Jekyll website** to get **firsthand experience** of how things are set up and what features they offer. 
   - During this process, I would recommend everyone follow the tutorial but **not directly copy all the content**; at least change something and see how the generator responds. 
   - This is the perfect time to enhance your understanding by **trying to "break" the settings**, so you can identify for yourself which syntax and arrangements are important and which are not.

3. **Develop My Website**
   - Since the idea of Jekyll is **pretty simple**, for some **duplicate code** like the header and footer, we can include them using [Liquid language](https://shopify.github.io/liquid/), so you do **not need to repeat your code on different pages**.
   - Also, for some display cards—like when I have a list of cards where the card CSS will be used on the home page and blog post listing page—instead of creating two separate codes for each page, I can make use of the features in **Jekyll** and **Liquid** to create it once and reuse it everywhere inside the directory.
   - And one of the most amazing things is that all of my **articles** can be **written in Markdown (.md) format**; I only need to **configure the style of the post once**, and then every time I update, it applies to all posts.
   - **During Development:** I kept running `jekyll serve` in my directory. For every update, the `_site` folder would be modified, and I could see the changes at `localhost:4000` after refreshing the page (although it’s not hot-reload like most of the latest development frameworks, it’s good enough for me).

4. **Build and Host the Website**
   - In Jekyll, the idea is to **convert all your Markdown files and reusable components into HTML websites**. 
   For every post, it would have its own HTML representation with all the headers and titles. This is very beneficial for SEO.
   - For example, my [penguingogo.com](https://penguingogo.com) now has more than 50 articles and 20-30 category pages. I do not need to create all 80 HTML pages by myself but just **set up the post and category page HTML once**, and then with the aid of Jekyll, it **creates them all**.
   - After running `jekyll build`, the HTML/CSS/JS will be built inside the `_site` folder.

5. **Host the Website**
   - To **make the website live**, we need to transfer the files inside `_site` to the corresponding root document path on our remote server.
   - To do this, I made use of **Git**. I first pushed the code inside `_site` to a Git repository and then cloned my repository on the server. After a hard reload in the browser, **the site is live!!!!!!**

---