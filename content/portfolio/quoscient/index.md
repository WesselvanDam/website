---
draft: true
title: 'Quoscient: an educational game'
slug: 'quoscient'
date: '2026-04-23'
publishDate: '2026-04-23'
summary: "My first published app teaches you what matters most when it comes to big themes."
keywords: [Software, Game]
params:
  bannerWide: quoscient-wide.webp
  bannerTall: quoscient-tall.webp
  bannerAlt: The logo of Quoscient, featuring blue and orange elements mimicking the shape of the letter Q.
  bannerAbout: The logo (vaguely) resembles the letter Q, and the square nature of the blue and orange shapes refer to the squares used in the game to estimate ratios. A little more subtle is the resemblance of the orange elements to the percentage symbol (%).
  startDate: '2025-03-27'
  location: null
---

Quoscient has been my main project for the past year, and I'll likely invest even more time in this app now that it is on the [Google Play Store](https://play.google.com/store/apps/details?id=com.quoscient.app). Working on this educational game required me to use almost all of the tools in my skillset, which made it all the more fun. 

## Origins

The idea for this game came from an series of interactions where someone would comment on the climate impact of something someone else was doing (e.g. generating an image with AI). Some of such remarks struck me as hypocritical, for example because the person was eating meat at the same time. At the same time, I had no idea how all those things related to each other in terms of climate impact. It is commonly known which things are bad for the environment (flying, eating meat, buying many clothes), but which of these is _worse_ remains a bit vague.

The initial app I had in mind therefore allowed users to compare the carbon footprints of a wide variety of things, particularly common goods and services, getting rewarded with a higher score if their estimate was better. I named this concept 'CarbonGuessr', inspired by the game of GeoGuessr. I went to work, but eventually pivoted the concept to allow for comparing more things than just the carbon emissions of daily activities: Quoscient was born.

The name is a play on quotient, with _scient_ referring to the educational nature of the game. It is all about comparing the relative 'impact' of items, and while inside the app the word 'ratio' is used instead, I'm quite happy with _Quoscient_. 

## Gameplay

In Quoscient, users are shown a list of 'collections' to choose from, with each collection covering a specific topic. Naturally, climate impact is one of them, and at the time of writing I also have collections for the global [burden of disease](https://www.who.int/data/gho/data/themes/mortality-and-global-health-estimates/global-health-estimates-leading-causes-of-dalys) and the mortality of [historic wars](https://en.wikipedia.org/wiki/List_of_wars_by_death_toll). Each collection contains items measuring some quantity (e.g. carbon footprint) in some unit (e.g. kg CO₂eq).

When the user starts a 'game', they are presented with two items, and are asked to compare those items in terms of the collection's quantity: which item has a **bigger impact**, and more importantly: _how much bigger?_ Once the user submits their estimate, the 'true' ratio is shown, and the user receives points for how good their estimate was. Each game lasts five rounds, wrapping up with sum total of the round scores and an overview of the rounds. 

{{< figure src="screenshots.jpg" alt="Screenshots from the Quoscient game" caption="Screenshots from the game with additional context, as shown on the Google Play Store." >}}

The goal is to improve your average score, as this indicates a deeper knowledge of the relative impacts of the items. It is not so much about memorising the exact values as it is about improving your mental model of how (groups of) items relate to each other. Ideally, of course, this improved model helps the user navigate the real world, for example by making sustainable decisions that actually matter (as opposed to, for example, focusing on turning off all unused lights in the house).

Central to the gameplay is the _input component:_ the mechanic for users to input their estimate of the relative impact of the two items. It consists of two overlapping squares, which represent the estimated relative impact by virtue of the squares' sizes. This visual aid aims to help users mapping the relative importance, and is a more fun way of entering your estimate than a simple text field. During testing, it became quite clear that my initial version of that component wasn't very intuitive &mdash; I hope the current version catches on.

## Working on Quoscient

Naturally, a lot of the work went into the development of the actual app. Perfecting the game's design and user experience took much longer now that I was working on an app that also targets complete strangers, as opposed to other projects such as the [AEGEE-Leiden App](/portfolio/aegee-leiden-app). While I once again learned a great deal about mobile app development, I feel like I should be able to ship to production faster in the future &mdash; this one took a bit too long!

However, another big chunk of time was (and is being) invested into developing the collections themselves. Given the nature of the app, it is important that users can trust the quality of the data. Therefore, I've devoted quite some effort into constructing the current collections, with the climate impact one needing some additions to make it more enjoyable. That one in particular uses many sources, as there isn't one specific dataset that suits my need. For the others (see a brief summary on the [Quoscient website](https://quoscient.app)), I could rely on the expertise of the WHO (for the _Global Health_ collection) and the collective effort of Wikipedia contributors for the _Historic Wars_ collection.  

Nevertheless, every data point requires some fact-checking before it can be added, and this has been both time-consuming and a lot of fun. For example, I spent three evenings researching the energy consumption of refrigerators just to be able to add two items to the climate impact collection &mdash; which taught me *a lot* about them. In the future, I want to create blog posts on the Quoscient website for each collection, providing some more insights and nuance, as well as adding bite-sized insights into the gameplay as well.

## Open to feedback!

I'm planning on spending more time developing Quoscient, both by adding new features in-game as well as by constructing more collections. If you've tried it out and have some feedback or ideas for new collections, please let me know! There are feedback forms available in the app to give general and collection-specific feedback, and you're always free to send an e-mail to [info@quoscient.app](mailto:info@quoscient.app).