---
layout: posts
title: Linux + Ubuntu + Apache - Buying Your Own Domain Name and Hosting It on Your Own Server
description: Starting as a YouTube/Udemy tutorial developer, I have always struggled with hosting my own server without paying much.
lang: en
imageSrc: /assets/images/blog/Setting-own-webserver.png
---

## My Previous Struggle

Starting as a YouTube/Udemy tutorial developer, I have always struggled with hosting my own server without paying much.

It is understandable that most of the tutorials teaching how to make full-stack web/mobile applications probably have some hidden agenda about selling certain services or using some user-friendly platforms (SaaS), which may end up costing a lot or leave you unable to understand the hidden logic behind the system building.

*[I am not saying they are bad; I think this is one of the ways to make their projects sustainable (earning a living) and to keep spending time providing different useful content for beginners.]*

- Railway
- Vercel
- SiteGround
- GoDaddy

## What I Did Differently This Time

After some time, I met a friend who taught me lots of useful ways to build a server. I would like to record it in this article for myself and for everyone who is sharing the same struggles that I have.

**My use case:** Creating my own travel blog with the domain name - penguingogo.com

### Step 1 - Buy the Domain Name

First, I used a pretty cheap website, [spaceship.com](https://spaceship.com), to buy the domain name. The price for a normal (not very special) .com website is around 12 USD per year.

### Step 2 - Buy a Server

I used [vultr.com](https://vultr.com) to host my server.

#### Step 2.1 - Buy the Server with Cheapest Linux and Ubuntu Setting

I bought the cheapest server with Linux and Ubuntu settings.

#### Step 2.2 - Log In to Remote Server by SSH Key

After buying your remote server, it is much more user-friendly to access it from your local machine using SSH keys.

First, it is good to understand the idea of SSH keys (Secure Shell), which provide a secure way to log in to a server over an insecure network. They allow your local computer to connect to a remote server securely.

Second, create a key pair on your local machine (for me, it's a MacBook) by running:

```
ssh-keygen -t ed25519
```

Normally, the key pair is located in `~/.ssh`, and you can get the public key in `id_ed25519.pub`.

Then, copy the public key to the `~/.ssh/authorized_keys` on the remote server.

> Before copying the public key, you can use SSH with the root user and password to log in to the remote server first.

#### Step 2.3 - Installing & Configuring Apache on Server for Web Hosting

[Apache](https://httpd.apache.org/) is an open-source HTTP server, launched in 1995.

We can then install Apache on the remote server. I followed the tutorial below:

[https://ubuntu.com/tutorials/install-and-configure-apache#1-overview](https://ubuntu.com/tutorials/install-and-configure-apache#1-overview)

By using the concepts introduced in the link above, I also configured [penguingogo.com](https://penguingogo.com).

### Step 3 - Make penguingogo.com Live

#### Step 3.1 - Connect the Domain Name to the Server

Log in to spaceship.com, go to the launchpad, and change the DNS settings of penguingogo.com to custom DNS with 'ns1.vultr.com' and 'ns2.vultr.com'.

#### Step 3.2 - Setting Up DNS in Vultr

Log in to Vultr, navigate to `Products -> Network -> DNS`, and then add `penguingogo.com`.

#### Step 3.3 - Setting Up Firewall in Vultr

Open TCP ports 80 for HTTP and 443 for HTTPS in the Vultr firewall settings.

### Step 4 - Get the SSL Certificate (Let's Encrypt and getssl)

[Let's Encrypt](https://letsencrypt.org/) is a free, automated, and open Certificate Authority (CA), run for the public’s benefit.

**getssl** is a package to obtain free SSL certificates from Let's Encrypt's ACME server, suitable for automating the process on remote servers. I followed the README at the following link:

[https://github.com/srvrco/getssl?tab=readme-ov-file#getting-started](https://github.com/srvrco/getssl?tab=readme-ov-file#getting-started)

---