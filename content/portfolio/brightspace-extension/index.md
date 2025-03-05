---
draft: false
title: 'A Brightspace browser extension'
slug: 'brightspace-extension'
date: '2022-04-30'
publishDate: '2025-03-02'
summary: A small browser extension that adds just a single button to the Brightspace interface.
keywords: [Software, Open Source]
params:
  bannerWide: brightspace-extension-screenshot-wide.webp
  bannerTall: brightspace-extension-screenshot-tall.webp
  bannerAlt: A screenshot of the Brightspace browser extension in action
  bannerAbout: "A screenshot of the Brightspace browser extension in action: the orange button is added by the extension and opens the PDF file in a new tab."
  startDate: null
  location: null
---

Many projects that I come up with revolve around optimization: making something faster, more efficient, or more user-friendly. While I was a student, Leiden University used BrighSpace as its digital learning environment. While BrightSpace is a great platform, I had one big issue with it: PDF files could not be opened in the browser directly. Instead, users needed to first download the file and _then_ open it. While a minor inconvenience, it was something that I wanted to fix to avoid cluttered downloads folders.

## The solution
Fixing this issue was relatively simple: BrightSpace already had a small PDF viewer in their interface, but this was not enough if you wanted to view multiple files. The link to the PDF file, however, was always present in the page's source code. Therefore, I created a small browser extension that added a button to BrightSpace pages with PDF files (and some other document types) that would open the file in a new tab. This way, users could easily view the file without having to download it first.

## Publishing the extension
While it is not the prettiest code (it was my first JavaScript project), the extension works well, although I have to maintain a list of all universities that use BrightSpace to ensure that the extension works for all users. I published the extension on the [Chrome Web Store](https://chromewebstore.google.com/detail/brightspace-open-in-new-t/doamghilakklioaodepimlcnlicjlcpp), where it has been installed over 1,000 times at the time of writing. Most users eventually uninstall it again after they finish their studies, but I am happy to see that some people find it useful.
