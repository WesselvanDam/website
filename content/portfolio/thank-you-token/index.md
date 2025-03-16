---
draft: false
title: The Thank You Token
slug: thank-you-token
date: 2024-09-30
publishDate: 2024-10-01
summary: A simple and sustainable way of expressing your gratitude to someone.
keywords: [Software, Website]
params:
  bannerWide: /bannerWide.jpg
  bannerTall: /bannerTall.jpg
  bannerAlt: The Thank You Token
  bannerAbout: "The header image is an AI-generated image of a token, on which I photoshopped the simplified Thank You Token logo."
  startDate: 2024-05-09
  location: Leiden, The Netherlands
---

The Thank You Token is a concept I came up with to tackle two problems that I was experiencing: first, the difficulties I have with expressing my gratitude to the people that matter to me, and second, the vast amount of resources put into and environmental impact caused by the widespread practice of gift-giving at every other occasion, despite many such gifts being unwanted or impractical.

## Origins

This project originated way back in the summer of 2021, when I somehow heard of a design contest by Dutch warehouse chain [HEMA](https://www.hema.nl "HEMA website"). The contest was about designing a new product that would be sold in their stores, with the theme being 'celebrating together' (courtesy of the COVID-19 pandemic, of course). At the time, I made a small prototype of the Thank You Token app, but it didn't make it past the first round. However, the idea of realizing the concept remained in the back of my mind, so I took it up again after finishing my master's degree.

## The Concept

The Thank You Token is much simpler than your everyday flower bouquet, bottle of wine or box of Merci's: it could be anything really, something small you have lying around that you can transform into a gift, the point being that it is not about the intrinsic value it carries, but the sentimental value bestowed upon it by the mere act of giving it. To make it more recognizable, you can draw or paint the Thank You Token logo on it. After a meaningful interaction with someone, be it a dinner date or a meet-up with an old friend, the Thank You Token is a way of saying thanks.

{{< figure src="/tokens.jpg" alt="A collection of Thank You Tokens" caption="Some tokens I made myself using wooden parts, rocks, and other stuff I had lying around.">}}

Additionally, it is intended as a circular gift, as you are supposed to pass it on to someone else after receiving it, whenever you're having a new meaningful interaction. This way, the token can travel around the world, connecting people in a way that is sustainable and meaningful.

## The Project

I ended up going through the full process of product development, from branding to website design and app development. It was a fun to work on such a versatile project with a variety of tools, trying to tie everything together in a coherent way. 

### Logo and Branding

For my submission to the HEMA contest, I had already made a logo featuring HEMA's iconic colours and font. I decided to keep this logo, albeit with slightly different colours. The logo features a triangle, circle and square, which represent the simplicity of the concept. Using AI, I made a mock-up of a token and photoshopped a simplified version of the logo on it, capturing the essence of the concept. 

{{< figure src="/banner.jpg" alt="The Thank You Token logo on an AI-generated token, with the true logo on the right" caption="The Thank You Token logo on an AI-generated token, with the full logo on the right.">}} 

### Website

To help people get started, I created a [website](https://thank-you-token.nl "Thank You Token Website") explaining the concept. It's quite simple: just one page with a brief introduction, instructions, and links to the app and flyer (see below). It also features illustrations made by my friend [Lieske van Oosten](https://www.linkedin.com/in/lieske-van-oosten-460b66299/) that capture the four steps of the concept: having that interaction, receiving the token, giving it a place at home, and recording the story behind it. I made the website with [Svelte](https://svelte.dev) and [TailwindCSS](https://tailwindcss.com) &mdash; I had been wanting to try out Svelte for a while, and this project seemed like a good opportunity to do so.

{{< slider caption="Illustrations of the four steps of the Thank You Token concept" >}}
{{< figure src="interact.png" alt="Illustration of the interaction step" >}}
{{< figure src="receive.png" alt="Illustration of the receive step" >}}
{{< figure src="store.png" alt="Illustration of the store step" >}}
{{< figure src="record.png" alt="Illustration of the record step" >}}
{{< /slider >}}

### Flyer

The website also features a [flyer](https://thank-you-token.nl/flyer.pdf "Thank You Token Flyer") in PDF format that can be printed and gifted along with the token. The flyer provides more information about the concept and the steps to take, as well as a QR code that links to the website. I made the flyer using [Adobe InDesign](https://www.adobe.com/products/indesign.html), although it primarily features the illustrations by Lieske, a mock-up of a token (made by AI and edited by me), and the Thank You Token logo (which I made in [Adobe Illustrator](https://www.adobe.com/products/illustrator.html)).


### App

Most work, however, went into creating a [web app](https://app.thank-you-token.nl "Thank You Token App") where users can keep a picture of the tokens they have received along with the story behind it. This way, whenever you pass it on, you will still have the entry in the app to reminisce about the interactions.

{{< figure src="/app.jpg" alt="A mock-up of the Thank You Token app" caption="A mock-up of the Thank You Token app, showing the screen where you can record the story behind the token.">}}

The web app stores the tokens in your own Google Drive, so you can access them securely from any device. Working with the Google Drive API, as well as Google Sign-In, was quite a challenge, as I encountered quite some issues with the authentication flow as well as file uploads. I made the app with [Flutter](https://flutter.dev), as I had gained quite some experience with it during the development of the [AEGEE-Leiden App](/portfolio/aegee-leiden-app). The app is quite simple, with just a few screens, but I hope people will find it useful.

## Conclusion

While I haven't really promoted this project, I hope people feel encouraged to show gratitude in the simple yet meaningful way that I imagined way back in 2021. Please check out the website, flyer and web app yourself, make a token, and give it to someone you care about when the moment is right :) 