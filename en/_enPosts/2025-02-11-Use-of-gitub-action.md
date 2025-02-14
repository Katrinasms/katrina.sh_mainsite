---
layout: posts
title: My Journey with CI/CD - Use of Github Action
description: After configure the html, css and js that I want in jekyll, I will then upload the corresponding documents to the Document Root in my remote server.
lang: en
imageSrc: /assets/images/blog/github-action.png
tag: []
mayLikes: [Setting-own-webserver]
---

### **My Struggle**

After configure the html, css and js that I want in jekyll, I will then upload the corresponding documents to the Document Root in my remote server.

Since [penguingogo.com](penguingogo.com) is a travel blog, which I will update the article in a daily basis, it would take so many time in repeating the same build and upload process everyday.

### **Use of Github Action**
To standardize the whole build and upload process, and also have proper version control. 

I used Github respository and add Github action. 
Since It is a good practice to always "save" your code when you complete certain feature or develop everytime.

The main idea is in my git respository, i will have a ``.github/workflows`` folder which included a .yml configuration.
In the .yml file, which included the "github action".

### **My Use Case**
For my use case, I want to have an action that, every time when I git commit to my website, it will help me to build the jeykll code and then put the necessary file inside _site into a new repository in git. 

Then, by sharing the ssh public and private key pair, it will then go to my remote server to pull my latest _site and then all content will be go on live.


```
name: Copy Site File to another repo
run-name: Pushing new Jekyll Code
on: 
  push:
    branches:
      - main

jobs:
  copy_site_folder_to_another_repo:
    runs-on: ubuntu-latest
    steps:
      - name: Check out this project
        uses: actions/checkout@v4
      - name: Check out another repo project
        uses: actions/checkout@v4
        with:
          repository: yourGithubName/yourTargetRespository
          path: _site
          token: ${{ secrets.KATRINASHSITE }}
      - name: Build the site in the jekyll/builder container
        run: |
          docker run \
          -v ${{ github.workspace }}:/srv/jekyll -v ${{ github.workspace }}/_site:/srv/jekyll/_site \
          jekyll/builder:latest /bin/bash -c "chmod -R 777 /srv/jekyll && jekyll build --future"
      - name: Run the Script
        run: |
          chmod +x ./scripts/commit.sh
          ./scripts/commit.sh
      - name: Run the Script
        run: |
          chmod +x ./scripts/pullInServer.sh
          ./scripts/pullInServer.sh
        env: 
          SSH_PRIVATE_KEY: ${{secrets.PRIVATE_KEY}}
          SSH_KEY_PATH: ${{ github.workspace }}/../private.key
      - run: echo "🍏 Both File is successfully check!"
```



### **Conclusion**
With this action, now, everytime when I git commit updated the article in jeykll site, after 1 minute for Me doing nothing, the latest site will be available in [penguingogo.com](penguingogo.com).

---
