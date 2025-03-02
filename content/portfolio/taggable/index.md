---
draft: false
title: 'My first package'
slug: 'taggable'
date: '2024-12-14'
publishDate: '2025-03-01'
summary: "The _flutter_taggable_ package evolved from my work on the AEGEE-Leiden App."
keywords: [Software, Open Source]
params:
  bannerWide: flutter-taggable-screenshot-wide.png
  bannerTall: flutter-taggable-screenshot-tall.png
  bannerAlt: "A screenshot of the flutter_taggable package in action"
  bannerAbout: null
  endDate: null
  location: null
---

In the early days of development on the [AEGEE-Leiden App](/portfolio/aegee-leiden-app), the code we had written was some of the ugliest I had ever seen. However, with some gradual improvements and large rewrite sessions, the project became more and more maintainable. Some of our 'home-made', custom implementations could even be considered reusable in other projects. With this in mind, I decided to extract the functionality we had written for tagging users in comments (e.g. "@Wessel") into a separate package, which I called _flutter_taggable_. For readers unfamiliar with the concept, packages are a way to share code with other developers.

## Why a separate package?
Both when we started developing our tagging system and when I started working on the package, there were already other packages available that provided similar functionality. However, one thing all options had in common was that they assumed that the tags would be stored in the same format as they were displayed.

For the AEGEE-Leiden App, this was not the case. For one, there might be multiple users with the same name. Additionally, additionally, we did not want tags to be 'broken' when a user changed their name. Our implementation therefore stored tags using user's unique identifiers, and displayed them using their names. As a side effect, this also allowed us to easily send notifications to the tagged users, as we could simply look up their identifiers in the database.

## About the package
As the code still contained some AEGEE-specific parts, I spend some time rewriting it to make the package as customizable as possible. This was a fun challenge, since it required me to think about how the package could be used in different projects. In the end, the behaviour is similar to WhatsApp's tagging system, but it allows developers to include multiple types of tags (e.g. using both "@" and "#") and to customize the way tags are displayed.

The package is available on [pub.dev](https://pub.dev/packages/flutter_taggable), and I wrote an article (drafted by an AI chatbot, as you might suspect when reading it) on Medium explaining [how to use it](https://medium.com/@wesselvandam2000/advanced-user-tagging-in-flutter-integrating-mentions-and-tags-with-your-backend-438df1faa92b).
