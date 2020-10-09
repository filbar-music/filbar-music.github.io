---
title: "Tonelab LE comme contrôleur MIDI"
date: 2020-10-02T15:13:10-07:00
draft: true
---

*J'apprends le français alors pardonne toute erreur*

Il y a des années, j'ai acheté un VOX ToneLab LE pour augmenter la collection de pédales de guitare dédiés que j'utilisais. Maintenant, j'ai vendu toutes mes pédales sauf deux: ma CryBaby d'origine (comment puis-je m'en séparer?!?) et le ToneLab LE (car personne n'en veut).

Le ToneLab, cependant, est devenu une partie intégrante de ma flux de travail numérique car en plus d'être une pedale multi-fx il dispose également du MIDI et peut se côntroller beaucoup de trucs. J'utilise regularment avec Bias FC sur iPad comme une ampli guitare mobile ou connecté à Bitwig pour côntroller les effets avec la pédale d'expression.

Mais cela ne fonctionne pas parfaitement sans changements car il n'envoie que du MIDI pour les changements de pédale d'expression et de programme, pas de changement de contrôle. Je documente cela pour moi-même lorsque je dois le réinitialiser ou peut-être que cela aidera quelqu'un d'autre.

## Program vs Effects Modes

First off it helps to understand the two modes and what types of MIDI signals each will send.

1. Program Mode: this is where you can select between different preconfigured effects stored in the banks.  This is the default mode and the 1-4 toggles will show red LEDs in this mode.  In this mode the 1-4 toggles will only send program change codes.

2. Effect Mode: This lets you toggle individual effects of the currently selected program.  To enter Effects mode press and hold the "Bank Up" toggle and you will see the LEDs turn green.  You are now in effects mode and the 1-4 toggles will send change control codes (once you enable it).

## Configuring The ToneLab LE For MIDI

Out of the box you get program changes and the expression pedal but no control codes for the toggles. So you have to do a bit [RTFMing](ToneLab_LE_Manual.pdf) to get this to work. Open the manual and start reading at page 50. :)  

In short you have to: 1) enable sending CC MIDI messages, and 2) assign CC #s to the different toggles.

1. With your ToneLab on, press the global button to get into settings.  Press the left (`<`) or right (`>`) arrow buttons to navigate and set `CCHG I/O` to `on`

{{< image src="cchngon.jpeg" >}}

2. now press both the left and the right buttons at the same time (`<` + `>`) to access further parameters and set the MIDI settings for each control switch.

For reference here are my settings:

Function  | Setting
----------|--------
Exp pedal | CC06
Ctrl      | CC05
Pedal     | CC01
Modulation| CC02
Delay     | CC04
Reverb    | CC05
Insert    | CC07
Amp Ctrl  | CC09
Cab Ctrl  | CC10

{{< image src="expcc.jpeg" >}}

The rest is up to you.  Connect to your computer and configure your DAW or Audio app to use the MIDI controller your liking.
