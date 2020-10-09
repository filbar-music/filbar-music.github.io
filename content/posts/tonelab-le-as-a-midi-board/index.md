---
title: "Tonelab LE as a MIDI Controller"
date: 2020-10-02T15:13:10-07:00
draft: false
---

Years ago I bought a VOX ToneLab LE to augment the collection of dedicated guitar effects that I was using. Fast forward a lot of years, I have sold nearly all my original guitar pedals but I still have two: my original CryBaby (I mean, how could I part with it?!?) and the ToneLab LE (because no one wanted to buy it).

The ToneLab however has become an integral part to my digital workflows because apart from being a multi-fx pedal it also has MIDI in/out and can be wired up to control all manner of things. I routinely use it with Bias FX on an iPad as a mobile guitar rig or connected to Bitwig to control effects with the expression pedal.  

But it doesn't work perfectly straight out of the box since it will you will only get MIDI for program changes and the expression pedal.  I am documenting this here mainly for myself—for the next time I reset it—but maybe it'll help someone else out.

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
