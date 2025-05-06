---
layout: posts
title: Build my own simple Flask mail list application
description:  I wanted to add a subscription mail list to connect with my audience. While many SaaS platforms offer email management, I preferred a minimal, authentic solution. So, I decided to build my own mail list application.
lang: en
imageSrc: /assets/images/blog/Build-My-Own-Simple-Flask-Mail-List-Application.png
tag: [local-llm-computer]
mayLikes: [CDN-for-image]
---
## **My Struggle**

After setting up my [personal travel blog](https://penguingogo.com), I wanted to add a subscription mail list to connect with my audience. While many SaaS platforms offer email management, I preferred a minimal, authentic solution. So, I decided to build my own mail list application.

## **My Use Case - Using Flask**

I added a subscription box to my blog’s footer using HTML, CSS, and JavaScript. Here’s a simplified version of the form:

```html
<div class="subscribe-box">
    <h3>Subscribe to My Travel Blog!</h3>
    <form action="/subscribe" method="POST">
        <input type="email" name="email" placeholder="Enter your email" required>
        <button type="submit">Subscribe</button>
    </form>
</div>
```

On the backend, I used Flask to create an endpoint that receives POST requests from the form and saves emails to a text file. Here’s the core code:

```python
from flask import Flask, request

app = Flask(__name__)

@app.route("/subscribe", methods=["POST"])
def subscribe():
    email = request.form.get("email")
    if email:
        with open("subscribers.txt", "a") as f:
            f.write(f"{email}\n")
        return "Thank you for subscribing!"
    return "Invalid email", 400
```

To back up the email list daily, I wrote a shell script and scheduled it with cron, a Linux tool for automating tasks.

## **My Thoughts**

I’m excited to use my coding skills to build something simple yet effective! For straightforward tasks, a custom solution can be just as good as a SaaS platform. :)

---