---
layout: content
title: WiFi on a Particle Argon with Zephyr
---

This took my quite a while. Running WiFi on a Particle Argon is possible. However, some work is necessary to get it running. Just a quick note: the Argon is already discontinued (I know), but maybe you have some lying around and want to bring all the power of Zephyr to those boards (like I wanted to). And as you already made it to this page, I guess you are willing to put some afford into it. So let's get started!

# ESP32 WiFi Co-processor

The Argon uses a Nordic nRF52840 as its main processor and an ESP32 as a WiFi co-processor. In order to get the ESP32 working, the first step is to re-program the ESP32 with a fresh new firmware that also works with Zephyr. The problem is that you need to build the ESP32 firmware on your own and finally flash it as Adafruit did it.

## Building ESP-NCP


