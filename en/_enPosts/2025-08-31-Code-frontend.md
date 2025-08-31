---
layout: posts
title: Code frontend with React or HTML/CSS/JS? 
description: When we start building a website, the first thing we often think about is how it looks. And because the internet (and even generative AI) tends to recommend React, it’s easy for beginners to jump straight into it. 
lang: en
imageSrc: /assets/images/blog/code_frontend.png
tag: [local-llm-computer]
mayLikes: [CDN-for-image]
---

**TL;DR: It depends—but we should understand the difference.**

When we start building a website, the first thing we often think about is how it looks. And because the internet (and even generative AI) tends to recommend React, it’s easy for beginners to jump straight into it. I did too 🙈
Back then, I thought React and HTML/CSS/JS were completely different things—and that React was the only easy way to build an app.

But after spending more time in the coding world, I realized everything is connected 🤣 (kind of obvious, but still). The browser only understands HTML, CSS, and JavaScript. React is just a tool that helps generate those files.
React uses client-side rendering—meaning the browser doesn’t need to refresh the page. JavaScript handles everything: elements, page changes, interactions. It all happens in the client’s browser. But this method isn’t always SEO-friendly.

On the other hand, server-side rendering means the server sends different HTML/CSS/JS files depending on the route. Instead of just one page, the server provides tailored content for each route—making it easier for search engines to crawl and index.

**Sometimes, we overengineer.**

It’s tempting to reach for the latest frameworks and libraries, especially when everyone seems to be using them. But if our goal is to understand the fundamentals—or build something simple and maintainable—vanilla HTML/CSS/JS with minimal server-side rendering can be a powerful choice.

Why? Because fewer layers mean fewer abstractions. You see exactly how the browser interprets your code, how the server responds, and how everything connects. It’s clean, transparent, and often easier to debug.
React and other frameworks are great—but they introduce concepts like virtual DOM, hydration, routing libraries, and build tools. These are useful, but they also add complexity. If we don’t understand what’s happening underneath, we risk building things we can’t fully control.

Starting with the basics doesn’t mean you’re building something “small.” It means you’re building something intentional. And when you’re ready to scale, you’ll know exactly why you’re choosing a framework—and what trade-offs come with it.

---