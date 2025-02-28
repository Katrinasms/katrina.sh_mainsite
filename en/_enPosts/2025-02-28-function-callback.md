---
layout: posts
title: Understand difference between normal function and callback
description:  I still get pretty confused when I come across the term "callback." To me, it always looks similar to a function.
lang: en
imageSrc: /assets/images/blog/callback-vs-function.jpg
tag: [function , callback]
mayLikes: [SSR-CSR]
---

## **My Struggle**
I’m not sure what’s happening in my brain. I've developed several web applications and mobile applications, but I still get pretty confused when I come across the term "callback." To me, it always looks similar to a function. Even though I think I have used "callbacks" in some of my use cases, I’m still very confused about what the difference is between a callback and a function. That's why, in this article, I plan to investigate a bit and get a fundamental understanding!

## **Function vs Callback**

### Definition

- **Normal Function**: A normal function is defined and called directly in the code flow. The programmer decides when to execute it, and it runs immediately in the current execution context

- **Callback:** A function passed to another function to be executed later, often in asynchronous programming

    > **Asynchronous programming:** tasks can run independently of the main program flow, allowing other work to continue while waiting for something (like data or a timer) to finish, rather than blocking everything until it’s done

### Example

Given a function below:

```javascript
function callMyname(name) {
    console.log("Hi, "+ name);
}
```

Can you tell is it a callback or normal function? 
I think normally it's pretty straight forward, it's a **normal function**, right?

What if I give the below two examples:

a. **Normal Function**

```javascript
function callMyname(name) {
    console.log("Hi, "+ name);
}
callMyname("Katrina");
```


b. **Callback Function**
```javascript
function callYouLater(name, callback){
    setTimeout(()=>{
        callback(name);
    }, 1000);
}

function callMyname(name) {
    console.log("Hi, "+ name);
}
callYouLater("Katrina", callMyname);
```
<br/> 
In the above two examples, I found out that **callMyname(name)** acted as both function and callback in two cases. But the different is the way to call it. 

In first example, it directly call the **callMyName** function, so this function considered as a normal function. While in the second case, it called as a variable of another function. So in this case, callMyName function is considered as callback.


### Summary
The primary distinction of function and callback is control and timing. Normal functions are called directly by the programmer, while callbacks are passed to another function and executed at a time determined by that function, often for handling results of asynchronous tasks or events.

This makes callbacks essential for scenarios like web requests, where you want to process data when it's available without freezing the program, unlike normal functions which block execution until they complete.

## **My Thoughts**
After a simple investigation, now I can finally understand the different between two! :) 

---




