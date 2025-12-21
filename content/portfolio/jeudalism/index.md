---
draft: false
title: "Jeudalism: a simple card game"
slug: "jeudalism"
date: "2024-08-27"
publishDate: "2024-08-27"
summary: "In a quest to find more games to play with regular playing cards, I created one myself."
keywords: [Design, Game]
params:
  bannerWide: "cards.webp"
  bannerTall: ""
  bannerAlt: "A collection of playing cards"
  startDate: null
  location: null
---

Playing games with friends or family has always been a fun pastime for me. Over the years, my collection of tabletop games and card games has grown a lot, yet when I'm out-of-doors I tend to resort to a deck of simple playing cards. Even though such a deck carries a lot of potential, the circumstances you're in may limit the games you can play: how many people are joining, whether there's a table available, players' personal preferences, and how much time and enthusiasm there is amongst the players to learn new rules.

In the summer of 2024, a friend introduced me to a card game he and a friend of his invented called "Standaard Tokio Regels" (Dutch for _Standard Tokyo Rules_ &mdash; yes, it's the actual name). It really ticks all the boxes:

- It's quite easy to explain and fast to set up.
- You don't need much space to play: if three stacks of cards can be placed next to each other, you're good.
- You can play it with any number of players (although it may get a bit cumbersome with more than 10).
- While luck is a very important factor, every turn comes with a tactical decision to make.

The main drawback is that it requires you to have a four-sided, an eight-sided, and a twenty-sided dice at your disposal. However, I was soon captivated enough to make a [simple web app](https://wesselvandam.github.io/standaard_tokio_regels/ "The Standaard Tokio Regels Web App") that generates the random numbers and keeps track of the score.[^1]

Inspired as I was, I soon decided that I wanted to create a card game of my own. The end result is quite the opposite of "Standaard Tokio Regels": the rules are complex, it's only for two to four players (and even then three players is preferred), and you do need a table to play it. I tried to model it after [Villagers](https://boardgamegeek.com/boardgame/241724/villagers "Villagers on the Board Game Geek website"), a game I really like to play at my parents' place. I'd say it mimics the core mechanics of Villagers well enough, and despite the aforementioned flaws, I enjoy playing my own game quite a lot. I named it _Jeudalism_, a portmanteau of _jeu_ (French for _game_) and _feudalism_ (with which I am not in any way affiliated, of course). If you want to give it a try, I added the rules below.

## Rules

In Jeudalism, your goal is to create fiefdoms by forming chains of subsequently _serfs_, _knights_, _vassals_, and _monarchs_. Each card has a value, and some card combinations are worth more points than others. The player with the most points at the end of the game wins.

### Setup

You'll need a standard deck of playing cards, ideally with the Jokers included. Shuffle the deck and then do the following:

1.  Deal each player 4 cards (face down). These are each player's **hand**.
2.  Place three cards (face down) in the center of the table. These are the **transfer cards**.
3.  Place the remaining cards in the center of the table as well. This is the **draw pile**.

### Taking a Turn

The player who most recently visited a farm goes first. A turn generally proceeds as follows:

1.  Look at the three transfer cards and take one into your hand.
2.  Play one of your hand cards in front of you in your fiefdom, either by starting a new chain with a serf or by extending an existing chain (see [Building a Chain](#building-a-chain)). If you cannot or do not wish to play a card, you may pass.
3.  Pass the transfer cards to the player on your left. This player refills the transfer cards to 3 using the top card(s) from the draw pile.
4.  When the draw pile runs out, the round is completed so that everyone has had an equal number of turns.

#### Building a Chain

Not every card can always be played, and not every card is allowed in a chain. Jeudalism divides the cards into the following ranks:

- **Serfs**: 2, 3, 4
- **Knights**: 6, 8, 9, 10
- **Vassals**: Jack, Queen, King
- **Monarchs**: Ace

The 5, 7, and Joker are [special action cards](#special-action-cards). The following rules apply when building a chain:

1.  You must start with a serf.
2.  You cannot play cards that are equal to or lower in rank than the highest card already in the chain, so you can never play an 8 or lower on top of an 8.
3.  Only knights that are a _multiple_ of the value of a serf can be played on a serf, so on a 2, only a 6, 8, or 10 can be played; on a 3, a 6 or 9 can be played, and on a 4, only an 8 can be played.
4.  Only vassals can be played on a knight, and they must match the color (red or black) of the **serf** in the chain, so on a chain starting with a serf of hearts or diamonds, only vassals of hearts or diamonds can be played.
5.  Only the monarch that matches the suit (hearts, diamonds, etc.) of the **serf** in the chain can be played on a vassal, so the Ace of hearts can only be played on a chain that starts with a 2, 3 or 4 of hearts.

Some examples of valid chains:

- **2♢, 6♣, 10♡, J♡**
- **3♠, 9♣**
- **4♡, 8♡, Q♢, K♡, A♡**

#### Special Action Cards

The 5, the 7, and the Joker are special action cards. They have the following effects:

- **Joker**: You can use a Joker to steal a knight that has already been played by another player. To do this, place the Joker in the knight's place, and place the knight in your own fiefdom. The Joker does not necessarily assume the exact value of the replaced knight, but rather the value that is most advantageous to the player. For example, if player A has a red 2 + black 8, and player B replaces the black 8 with a Joker to place the black 8 on their own black 4, the Joker can take the form of a red 6. This way, player A has the color bonus and also the possibility to place another red 8 or 10 on it.
- **5**: You can play a 5 after you have seen the transfer cards, but before you have taken one. You may now take two of the transfer cards into your hand.
- **7**: You can play a 7 before you have played a card. You may now play two of your hand cards in succession, instead of one.

### Scoring

At the end of the game, the values of all chains in your fiefdom are calculated and added together. This is done per chain as follows:

1.  The serf is worth what is on it: a 2, 3, or 4. This is the **base value**.
2.  For each knight in the chain, you get the **base value** again.
3.  If the serf and all knights are all red or all black, you get the **base value** again. This is the **color bonus**.
4.  For each vassal in the chain, you get **5 points**.
5.  If the serf and all vassals have the same suit (all hearts, all clubs, etc.), you get the **base value** again. This is the **suit bonus**.
6.  For a monarch in the chain, you get **10 points**.

The example chains therefore have the following values:

- **2♢, 6♣, 10♡, J♡**:

  - Base value: 2
  - Knights: 2 + 2
  - Vassal: 5
  - No color bonus: not all knights are red
  - **Total**: 2 + 2 + 2 + 5 = 11

- **3♠, 9♣**:

  - Base value: 3
  - Knight: 3
  - Color bonus: 3
  - **Total**: 3 + 3 + 3 = 9

- **4♡, 8♡, Q♢, K♡, A♡**:
  - Base value: 4
  - Knights: 4
  - Vassals: 5 + 5
  - Ace: 10
  - Color bonus: 4
  - Suit bonus: 4
  - **Total**: 4 + 4 + 5 + 5 + 10 + 4 + 4 = 36

### Common Strategies

- Ideally, you should play a card every round and pass as little as possible to avoid having too many cards left at the end of the game. In the beginning, it is therefore wise to collect many serfs.

- Sometimes you want to choose a card purely to prevent one of the other players from getting that card, for example, when the transfer cards contain a club Ace and the next player already has a long chain that starts with a club serf.

[^1]: I am well aware that the web app does not look great on wide screens &mdash; I use it solely on mobile devices.
