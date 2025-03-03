---
layout: posts
title: Combination of Hook, Callback and API
description:  I still get pretty confused when I come across the term "callback." To me, it always looks similar to a function.
lang: en
imageSrc: /assets/images/blog/usagi-hook.webp
tag: [hook , API, callback]
mayLikes: [function-callback]
---

## **My Struggle**
While working on various programming projects (e.g., Telegram Bot, WordPress, React), I realized that interacting with well-established frameworks requires mastering the concepts of APIs, hooks, and callbacks.

## **The Combo of API, Hook, and Callback**

### **Definitions**
- **API (Application Programming Interface):** A mechanism that enables two software components to communicate with each other using a set of definitions and protocols.  

- **Hook:** A broad concept that goes by different names depending on the context (e.g., webhook, WordPress hook, React hook). A hook allows programmers to insert external or custom code into the lifecycle of a framework. The specific points or methods for injecting callbacks are typically called hooks.

- **Callback:** A function that is triggered later based on certain conditions or events. More details can be found in my [previous article](https://katrina.sh/en/post/2025-02-28-function-callback.html).

### **Use-cases**
Based on my experience, I’d like to share how these three concepts—API, hook, and callback—are applied in WordPress, Telegram bots, and React.

#### **WordPress**
In WordPress, creating a custom theme requires understanding its API and the lifecycle of how themes are processed. The WordPress API provides a set of functions and methods to interact with its core system, such as enqueueing styles or scripts.

Here’s an example of adding a Font Awesome icon style to a theme:

```php
// functions.php
function enqueue_my_icons_styles() {
    wp_enqueue_style('font-awesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css', array(), '4.7.0');
}
add_action('wp_enqueue_scripts', 'enqueue_my_icons_styles');
```
<br />

In this example:
- **API:** The WordPress API includes functions like `wp_enqueue_style()`, which is part of the core scripting API for registering and loading stylesheets. This function communicates with WordPress’s internal systems to ensure the Font Awesome CSS file is properly included in the theme.
- **Hook:** The `wp_enqueue_scripts` hook is a predefined point in WordPress’s lifecycle where scripts and styles are enqueued, typically before the page is rendered. It allows custom code to be injected at the right moment.
- **Callback:** The `enqueue_my_icons_styles()` function serves as a callback, executed when the `wp_enqueue_scripts` hook is triggered. It’s attached to the hook using `add_action()`, a built-in WordPress utility.

From the WordPress Developer Handbook, we learn that theme-specific customizations can be added in the `functions.php` file, leveraging the API, hooks, and callbacks to extend functionality.

#### **Telegram Bot**
When building a Telegram bot, we interact with the Telegram Bot API, which provides endpoints to send and receive messages. Webhooks and callbacks play a key role in handling real-time updates.

Here’s an example using Node.js to set up a simple Telegram bot that echoes messages:

```javascript
// index.js
const TelegramBot = require('node-telegram-bot-api');
const token = 'YOUR_BOT_TOKEN'; // Replace with your bot token from BotFather
const bot = new TelegramBot(token, { polling: true }); // Polling instead of webhook for simplicity

// Callback function to handle incoming messages
bot.on('message', (msg) => {
    const chatId = msg.chat.id;
    const receivedText = msg.text;

    // Echo the received message back to the user
    bot.sendMessage(chatId, `You said: ${receivedText}`);
});

// Optional: Handle a specific command
bot.onText(/\/start/, (msg) => {
    const chatId = msg.chat.id;
    bot.sendMessage(chatId, 'Welcome to the bot!');
});
```
<br />

In this example:
- **API:** The Telegram Bot API provides methods like `sendMessage` and events like `message`. We use the `node-telegram-bot-api` library, which abstracts HTTP requests to the Telegram servers.
- **Hook:** The `bot.on('message', ...)` method acts as a hook, listening for incoming messages from Telegram’s update stream. Similarly, `bot.onText(/\/start/, ...)` hooks into messages matching the `/start` command.
- **Callback:** The arrow functions passed to `bot.on` and `bot.onText` are callbacks, executed when Telegram sends a new message or the `/start` command is received.

For production, you might replace polling with a **webhook** by setting up an HTTPS server and registering it with `bot.setWebHook('https://your-server.com/bot')`. The webhook would then receive updates via an API endpoint, triggering callbacks as needed.

#### **React**
In React, hooks are built into the framework to manage state and side effects in functional components, often interacting with external APIs via callbacks.

Here’s an example of fetching data from a public API using the `useEffect` hook:

```javascript
// App.jsx
import React, { useState, useEffect } from 'react';

function App() {
    const [data, setData] = useState(null);

    useEffect(() => {
        // Callback function to fetch data
        const fetchData = async () => {
            try {
                const response = await fetch('https://jsonplaceholder.typicode.com/posts/1');
                const result = await response.json();
                setData(result);
            } catch (error) {
                console.error('Error fetching data:', error);
            }
        };

        fetchData(); // Trigger the callback
    }, []); // Empty dependency array means it runs once on mount

    return (
        <div>
            <h1>Post Title</h1>
            {data ? <p>{data.title}</p> : <p>Loading...</p>}
        </div>
    );
}

export default App;
```
<br />
In this example:
- **API:** The `fetch` function interacts with an external REST API (`jsonplaceholder.typicode.com`), returning a promise that resolves with the response data.
- **Hook:** The `useEffect` hook integrates into React’s component lifecycle, running the provided callback after the component mounts (due to the empty dependency array `[]`).
- **Callback:** The `fetchData` function is a callback that executes asynchronously within `useEffect`. It fetches data and updates the component’s state using `setData`, triggering a re-render.


## **My Thought**
By understanding how to combine and use APIs, hooks, and callbacks, I now feel much more confident in developing code with frameworks!

---
