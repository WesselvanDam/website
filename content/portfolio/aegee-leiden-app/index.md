---
draft: false
title: The AEGEE-Leiden app
slug: aegee-leiden-app
date: 2025-03-01
summary: Developing a complex app for my student association remains my biggest coding project to date.
keywords: [Software, App]
params:
  bannerWide: /bannerWide.jpg
  bannerTall: null
  bannerAlt: A mockup of the AEGEE-Leiden App on a smartphone
  startDate: 2020-09-01
  location: Leiden, The Netherlands
---

My biggest coding project to date is the development of the AEGEE-Leiden App, a platform that was initially developed for Android and iOS, but was later adapted for web support as well. With such a big project, there is a lot to tell &mdash; it should be no surprise that this is one of my longest posts on this website.

## The Problem
My student association, AEGEE-Leiden, organises activities on a weekly basis. When I became a member in 2017, these activities were communicated through a Facebook group and the weekly newsletter. Even then, Facebook's popularity was declining among students, and I would use it for the sole purpose of keeping up with AEGEE-Leiden. 

During my [board year](/career/board-year-at-aegee), the situation had gotten worse, as more and more first-year students were not using Facebook at all. To mitigate this, we created a WhatsApp group in which we announced activities. While a decent solution, WhatsApp does not offer everything we want a communication platform to have. Other platforms, too, had downsides of their own.

As a result, I spent some time researching the possibility of creating an app for AEGEE-Leiden. While there are some companies offering association apps as a service, they are too expensive for a small association like AEGEE-Leiden. Therefore, without any prior experience, I dived into the world of app development. Convinced that we could pull it off, my friends [Enzo](https://www.linkedin.com/in/enzo-sastrokarijo-35848929b/) and [Koen](https://www.linkedin.com/in/koen-hagen-a8224a149/) joined me on this quest to create the AEGEE-Leiden App.

## About the App
The AEGEE-Leiden App really is intended to be the one place where members of AEGEE-Leiden can find all the information they need. Its design was heavily inspired by the structure of Facebook Groups, although we now had the freedom to implement features that we felt were missing in Facebook. Some of the most important features of the app are:

- **Post Feed**: A feed of all posts made by the board, committee members, and other members, typically to promote an activity or share information.
- **Activity Overview**: A calendar view of all upcoming activities, with the possibility to filter on the type of activity.
- **Activity Details**: A detailed view of an activity, including the possibility to sign up or indicate interest.
- **Member Directory**: A list of all members of AEGEE-Leiden, with the possibility to search for a specific member.
- **Photos and Resources**: A collection of important documents (such as the quarterly magazine, information booklets, and documents for general assemblies), as well as photos of past activities.
- **Notifications**: Push notifications for new posts and activities, as well as reminders for activities you signed up for.

This is just a selection of the features that we implemented in the app. It can genuinely be said that the app nowadays offers everything that we initially wanted it to have. I can talk for ages about this project, so feel free to reach out if you want to know more about it!

## The Development Process
Starting from scratch, with just three people with barely any experience in app development, was a daunting task. The framework we used, [Flutter](https://www.flutter.dev/), was new to all of us, and while it was relatively easy to learn, we stumbled from one problem to the next as we were developing the app. Nevertheless, we were very motivated, made steady progress, and even booked a weekend trip in which we worked on the app for three days straight.

We adhered to the [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)) methodology, with two-week sprints in which we divided tasks based on our skills and interests. The advancements we made in our knowledge of Flutter, app development in general, as well as project management, have been immense. Much of my current coding expertise can be traced back to this project.

Development started in September 2020, and we worked on the project next to our studies until we released the first version on May 24, 2022. A little 'Release Party' was held to celebrate, and it was one of my proudest moments. Since then, numerous updates have greatly improved the app, including a completely new user interface and the addition of web support. While a complex project, I have also written ample documentation to ensure that future developers can easily pick up where we left off. In the spring of 2025, I stepped back from the project, handing over the reins to a new team of developers.

## Conclusion
While I will include the technologies involved in the project below for tech-savvy readers, I want to conclude this post by stating that this project has greatly fostered my love for coding, and more specifically for software development. Many of the other projects on this website (and others that I have not written posts about) would not have come to fruition without the experience I gained from developing the AEGEE-Leiden App. I am confident that this project will remain one of my proudest achievements considering where I started and where I ended up.  

## Technical Details
For fellow developers, here are some technical details about the AEGEE-Leiden App:

- **Frontend**: The app was developed using [Flutter](https://www.flutter.dev/), a cross-platform framework developed by Google. Some important packages we used are [riverpod](https://pub.dev/packages/riverpod) for state management, and [go_router](https://pub.dev/packages/go_router) for routing. Design-wise, we're relying primarily on the built-in Material Design components.
- **Backend**: The backend of the app is a [Firebase](https://firebase.google.com/) project, which we primarily used for the following services:
  - _Authentication_ for user management and access control (e.g. for admin features)
  - _Firestore_ for storing posts, activities and comments
  - _Storage_ for event banners and post images
  - _Cloud Messaging_ for push notifications
  - _Cloud Functions_ for many server-side tasks, such as sending triggering push notifications, role management, integrations, and more.
  - _Hosting_ for serving the web version of the app
- **Resource CMS**: While posts, activities, comments, etc. were stored in Cloud Firestore, we used Google Drive for the storage of photos and documents, as this is easier to maintain for non-developers. The Google Drive API is used to fetch these resources.
- **Version Control**: We used Git for version control, using branches for each feature or bug and leveraging many of GitHub's features, such as issues, pull requests, and project boards. Across the project, I made over 1,000 commits to the repository.

If you have any questions about the technical details, feel free to reach out to me!



