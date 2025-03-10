---
draft: false
title: 'Making my own website'
slug: 'my-website'
date: '2025-03-02'
publishDate: '2025-03-02'
summary: "You're looking at it right now!"
keywords: [Software, Website]
params:
  bannerWide: original-website-background.jpg
  bannerTall:
  bannerAlt: "An illustration of a boy reading in a forest."
  bannerAbout: "The banner image is an AI-generated image that I made during my first attempt of making my own website in January 2023. It was intended as a background image for the entire site, but now I have ended up settling for a more minimalistic design."
  startDate: null
  location: null
---

The website you're on right now has a long history. While I have a different post dedicated to the [purpose of my website](/thoughts/this-website/), this post is more about the process of building it, which took longer than I anticipated. While it may not look like much to some, a lot of thinking and some failed attempts preceded this, which has been both frustrating and insightful. 

## Getting started

I'm not entirely sure when I decided that I wanted my own website, but I started working on it somewhere during my [exchange in Stockholm](/career/exchange-in-stockholm). I was heavily inspired by [GatesNotes](https://www.gatesnotes.com/), the website of philanthropist Bill Gates, and the type of content that was on there. I was also obsessed with the idea of making my site hyper-symmetrical. My website's _tagline_ had to consist of three items, because the content was split into a _blog_ part consisting of three categories (_Thoughts_, _Stories_, and _Content_) and an _about_ part consisting of three categories (_Portfolio_, _Experience_, and _Education_).[^1] Here's a little video showing the version I made at the time using [Svelte](https://svelte.dev/ "The Svelte website"):

{{< video src="first-website.mp4" caption="A demo of the first version of my website, which I abandoned in March 2023." >}}

It was my first true experience building a website (not counting the web version of the [AEGEE-Leiden App](/portfolio/aegee-leiden-app)), as well as my first experience with Svelte. Although I liked the animations and transitions, I wasn't happy with a lot of things, and didn't give the project much thought once I started my internship and wrote my thesis for my [master's degree](/career/master-computer-science).

## Attempt number two

Although continuing this project was on my mind occasionally, I only really started working on it again after finishing the [Thank You Token Project](/portfolio/thank-you-token). Where I initially had chosen Svelte to expand my skillset, I now chose to start over in Flutter as it was the framework I was most confident with and I didn't want the technical side of the project to slow me down. Inspired by my work on the [AEGEE-Leiden website](/portfolio/aegee-leiden-website), I started making some designs in Figma first, as opposed to diving into the code right away. I had a clear vision of the homepage having my logo, four featured posts, and a 'read more' tile, which I implemented in October 2024:

{{< video src="second-website.mp4" caption="The homepage of the second version of my website" >}}

Soon after, I paused work on my website to focus on AEGEE's site instead. During this time, I read the books [Refactoring UI](https://www.refactoringui.com/) by Adam Wathan (creator of TailwindCSS) and Steve Schoger and [Laws of UX](https://lawsofux.com/book/) by Jon Yablonski. I had always felt that design was my weak spot (despite continously taking on design projects within AEGEE), and these books were truly enlightening. All this time, I wanted my website to be special and impressive, but after reading these books, I decided that I should learn to master the basics first. 

## The final site

Just like the AEGEE site, this one is built with [Hugo](https://gohugo.io/) and TailwindCSS. This time, I strongly modeled the design after GatesNotes, with some enhancements here and there. Still, you will see traces of the earlier versions in this site. I paid close attention the design principes I learned from the books (e.g. contrast, whitespace, and hierarchy), and made the site revolve more around the content than the design. Special attention was given to the responsiveness of the site, as I wanted it to look good on all devices. 

I will probably never consider this website truly finished, as I will always want to add new features or change the design. Nevertheless, I am much happier with this version than with the designs I made before, as it feels more mature, more accessible, and more focused on the content. In that regard, compiling and writing all the content for this site has been a great exercise, as I had about seven years of experience to reflect on. Now that the website finished, I hope it fulfills its aforementioned [purpose](/thoughts/this-website/) well &mdash; and that you enjoy reading it!


[^1]: At the beginning of the video of my first website, you'll see that the three items in the tagline are _Stoic | Generalist | Introvert_. Indeed, quite dramatic, and at the time I was rather pleased with these three. Soon, however, I started to dislike the idea of trying to describe myself in three words (as well as these three specifically). Now, I prefer the idea of the ensemble of posts on this website describing me instead.