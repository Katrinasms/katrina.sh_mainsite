---
layout: posts
title: Linux + Ubuntu + Apache - Buying your own domain name and hosting it in your own server (To be Continue)
description: Starting with a youtube/Udemy tutorial developer, I am always struggling with hosting my own server without paying much. 
lang: en
imageSrc: /assets/images/blog/Setting-own-webserver.png
---
## My previous struggle
Starting with a youtube/Udemy tutorial developer, I am always struggling with hosting my own server without paying much. 

It is understandable that most of the tutorials (teaching to make the full stack web/mobile application), they probably have some hidden agenda about selling certain or using some user-friendly platform (Sass) which turn out may cost a lot or cant understand the hidden logic behind the system building.

[I am not saying they are bad, I think this is one of the way to make their project sustainable (earn for living) and keep spending time in providing different useful content for beginner]

- railway
- vercel
- site-ground
- goDaddy

## What I did difference this time
After certain time, I met a friend who taught me lots of useful way to build server. I would like to record it in this article for myself and for everyone who sharing the same struggle that I have.

**My use-case:** Creating my own traveling blog with domain name - penguingogo.com

### Step 1 - Buy the domain name

First, I used a pretty cheap website, which is, [spaceship.com](spaceship.com) to buy the doamin name. 
The price per a normal (not very special *.com website is around 12 USD per year).

### Step 2 - Buy a server 

I used [vultr.com](vultr.com) to host my server. 

#### Step 2.1 - Buy the server with cheapest linux and ubuntu setting

I brought the cheapest setting with linux and ubuntu setting.

#### Step 2.2 - Login in to remote server by SSH key

After buying your remote server, it is much user friendly to load it in your local server.

First, it is good to understand the idea about SSH key (Secure Shell), the secure way to login to server with insecure network.
It is to allow your local computer to connect to remote server.

Second, creating a key pair in your local machine (for me, it's a Macbook), by:

```
ssh-keygen -t ed25519
```

Normally the key pair are located in ```~/.ssh``` and you can get the public key in ```id_ed25519.pub```.

And then copy the public key to the ``~/.ssh/authorized_keys``.

> Before copying the public key, you can use ssh with root user and password to login to the remote server first.

#### Step 2.3 - Installing & Configuring Apache in server for web hosting

[Apache](https://httpd.apache.org/) is a open source HTTP server, launched since 1995.

We can then install apache in the remote server. I followed the tutorial below:

[https://ubuntu.com/tutorials/install-and-configure-apache#1-overview](https://ubuntu.com/tutorials/install-and-configure-apache#1-overview)

By using the concept introduce in the above link, I also configured [penguingogo.com](penguingogo.com).


### Step 3 - Make penguingogo.com to live
#### Step 3.1 - connect the domain name to the server 
Get into the spaceship.com, go to the launchpad, change the DNS of penguingogo.com to custom dns with 'ns1.vultr.com' and 'ns2.vultr.com' 

#### Step 3.2 - Setting in DNS Vultr
Get into Vultr, ``Product -> Network -> DNS``, and then add ``penguingogo.com``



#### Step 3.3 - Setting in Firewall Vultr

Set open TCP port 80 for http and port 443 for https.


### Step 4 - Get the SSL certificate (Let's encrypt and getssl)

[Let's encrypt](https://letsencrypt.org/) is a free, automated, and open Certificate Authority (CA), run for the public’s benefit.

**getssl** is a package to obtain free SSL certificates from letsencrypt ACME server Suitable for automating the process on remote servers, I followed the readme to the following link:
[https://github.com/srvrco/getssl?tab=readme-ov-file#getting-started](https://github.com/srvrco/getssl?tab=readme-ov-file#getting-started)


## Summary