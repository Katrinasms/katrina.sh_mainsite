---
layout: posts
title: Taste of Object Oriented Program (OOP)
description: By the time I realized that skipping OOP had come back to bite me, refactoring everything felt almost too late.
lang: en
imageSrc: /assets/images/blog/oop.png
tag: [local-llm-computer]
mayLikes: [CDN-for-image]
---

## **My Struggle**
When you first get into programming, especially when learning modern languages, concepts like "class", "inheritance", and "OOP" usually show up toward the later parts of tutorials. They often start with examples like "Car", "Engine", and "Type". These are common use cases—they're easy to understand, but since they don’t reflect real-world scenarios and appear near the end of tutorials, I usually rush through them just to feel like I’ve finished. That means I don’t pay as much attention as I did at the beginning. As a result, I end up being much more comfortable with loops, conditionals, and basic operations—**but not classes.**

After completing the tutorial and starting my first real project, I naturally leaned on what I’d just learned: writing functions using loops and if statements. That felt great—I could make a to-do list app with custom-made functions! I kept building more and more, often ignoring classes, mostly because I didn’t really understand them. It wasn’t until I ran into a bunch of repetitive or messy data that I finally started thinking, “Maybe I should use a class for this.”

As **the project grew more complex**, I kept **adding variables and tweaking existing functions**, sometimes hardcoding logic directly into them. Whenever there was a small change in the data structure, I had to revisit multiple parts of the code just to make sure things didn’t break. It became a **struggle to add new features**. And become less motivated and tired of my code... 

**By the time I realized that skipping OOP had come back to bite me**, refactoring everything felt almost too late.

Recently, I started building a new SaaS project. This time, instead of diving straight into writing functions, I took some time to study classes and structured the project with an object-oriented approach from the beginning.


## **Use of OOP**
### Robustness and Maintainable
As I treat the project pretty seriously, and I know that robustness and maintainability are one of my main goals, that's why I kind of know OOP is the solution.

### Thought: Functional Programming vs Object Oriented Programming
At the beginning, I really struggle to understand deeply why I need to use "class" for logic and why classes would help. When you come across a problem and try to solve it, it feels natural to do step 1, then step 2, and so on. But using a class makes me feel like before starting step 1, I need to first spend most of the time understanding the relationship between all the steps—from step 1 to step N—then figure out the common structure and make it into a class first. Only then can I go from step 1 to step N. And even so, for each step I also need to think about what class it belongs to.

Then I started to follow the **Liskov Substitution Principle** to break down everything that can be broken down and group them as parent class and subclass. Instead of programming step 1 to step N first, I start with programming the class first. It's not easy and took quite a lot of effort to understand. [ at least for me :( ]

### Begin of using classes
To begin with, I start to read the definition of **Liskov substitution principle**:
> If S is a subtype of T, then objects of type T may be replaced with objects of type S without altering any of the desirable properties of the program (correctness, task performed, etc.)

and also the **four main concept of OOP**:
> Abstraction, Encapsulation, Inheritance, Polymorphism. 

Instead of directly going into my IDE, I went to pen and paper and slowly thought about what classes should be defined. It took me days to really think through how to relate all the classes before I went into the code. Although when I was implementing the code, there were some modifications, the general class structure remained the same.

My trick is to start with a small problem and then slowly enrich it. And in OOP, enriching or adding new features is really, really much simpler and cleaner compared to functional programming. Even at the later stage, when creating test cases, I gained much more confidence in my code after all! :)



---
