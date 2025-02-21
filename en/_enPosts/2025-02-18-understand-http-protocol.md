---
layout: posts
title: Understand what is HTTP Protocol
description: I tried to use airdrop, but the format of photos are .HEIC, not a normal web broswer support format and the size of photos is HUGE!
lang: en
imageSrc: /assets/images/blog/http_protocol.jpg
tag: []
mayLikes: [Use-of-telegram-bot]
---

### **My Struggle**

When working on website setup, hosting, certificates, and the corresponding ways to structure and configure the site nicely in HTML/CSS/JS, I can follow steps and tools to complete it.

However, sometimes when you check live sites in different browsers, you may notice varying performance. Without a clear concept of how browsers communicate with the server, it becomes challenging to debug and enhance performance.

Understanding the basic logic is always fun, so I decided to start by reading more about the HTTP Protocol – the amazing technology that has transformed the ecosystem of the web.

### **Read and Understand**
I mainly go through part of the information provided in the **[Internet-draft of HTTP/1.1](https://www.w3.org/Protocols/HTTP/1.1/draft-ietf-http-v11-spec-01)** to make the following summarize.

#### **What is HTTP?**
HTTP, short for Hypertext Transfer Protocol, is an application-level protocol for distributed, collaborative, hypermedia information systems.

It is a:
- generic, 
- stateless, 
- object-oriented protocol which can be used for many tasks(such as name servers and distributed object management systems, through extension of its request methods) 

A feature of HTTP is the **typing and negotiation of data representation**, allowing systems to be built independently of the data being transferred.

#### **Why HTTP?**
As there were already ways to communicate via telecommunication technologies in the 1990s, the World-Wide Web Consortium (W3C) wanted to standardize the way machines communicate. 

It's like creating a universal language that every machine could understand, so they introduced the protocol. 
That's why we have HTTP!

There were always things to improve (such as data being too raw or sending too much data at once, which decreased performance), so new versions were developed to enhance and meet the evolving needs. That's why we kept seeing new version!

#### Who create HTTP? When?
HTTP has been in use by the World-Wide Web global information initiative since 1990.
The first version of HTTP, referred to as HTTP/0.9, was a simple protocol for raw data transfer across the Internet. 

### **Major Idea of HTTP**

#### **Statelessness:**
HTTP is a stateless protocol, meaning each request from a client to a server is independent; the server doesn't retain any state between requests. This simplifies design and allows for greater scalability.

#### **Resource-Based:**
HTTP operates on resources, identified by URLs (Uniform Resource Locators). Each resource can be accessed, modified, or interacted with using standard HTTP methods.

#### **Request-Response Model:**
HTTP follows a straightforward request-response model. The client (usually a browser) sends a request to the server, and the server processes this request and returns an appropriate response.

#### **Extensibility:**
HTTP is designed to be extended. Through methods, headers, and status codes, it can support a wide range of functionalities and services beyond just web pages.

### **How to Use HTTP**

#### **Understanding HTTP Methods:**
HTTP methods define the action to be performed on a resource:
- **GET:** Retrieve data from the server.
- **POST:** Send data to the server to create a resource.
- **PUT:** Update a resource on the server.
- **DELETE:** Remove a resource from the server.
- **HEAD:** Retrieve headers only, without the body.
- **OPTIONS:** Describe communication options for the target resource.

#### **Constructing HTTP Requests:**
A typical HTTP request includes:
- **Request Line:** Method, URL, and HTTP version (e.g., `GET /index.html HTTP/1.1`).
- **Headers:** Additional information about the request (e.g., `User-Agent`, `Accept`).
- **Body:** (Optional) Data sent with the request (e.g., form data in a POST request).

#### **Interpreting HTTP Responses:**
An HTTP response consists of:
- **Status Line:** HTTP version, status code, and reason phrase (e.g., `HTTP/1.1 200 OK`).
- **Headers:** Metadata about the response (e.g., `Content-Type`, `Set-Cookie`).
- **Body:** The actual resource or data being returned (e.g., HTML content, JSON data).

#### **Common HTTP Status Codes:**
- **2xx Success:** The request was successfully received, understood, and accepted (e.g., `200 OK`).
- **3xx Redirection:** Further action is needed to complete the request (e.g., `301 Moved Permanently`).
- **4xx Client Error:** The request contains bad syntax or cannot be fulfilled (e.g., `404 Not Found`).
- **5xx Server Error:** The server failed to fulfill a valid request (e.g., `500 Internal Server Error`).

### **Client and Server Communication Steps**

1. **Client Initiates Request:**
   - The client sends an HTTP request to the server.

2. **DNS Lookup:**
   - Resolves the domain name to an IP address.

3. **Establishing a TCP Connection:**
   - The browser establishes a connection with the server. For HTTPS, an SSL/TLS handshake is performed.

4. **Sending the HTTP Request:**
   - The client sends the constructed HTTP request to the server.

5. **Server Processing the Request:**
   - The server processes the request and prepares an appropriate response.

6. **Sending the HTTP Response:**
   - The server sends the HTTP response back to the client.

7. **Rendering the Response:**
   - The browser receives and renders the response content.

8. **Closing the Connection:**
   - The connection may be closed or reused for multiple requests.

### **Conclusion**
Understanding the fundamental concepts and steps of HTTP communication helps in debugging and enhancing web performance. The HTTP protocol's simplicity and extensibility make it a cornerstone of web technology, enabling seamless interaction between clients and servers.





---