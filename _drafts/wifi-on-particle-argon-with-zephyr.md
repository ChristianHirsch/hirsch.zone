---
layout: content
title: WiFi on a Particle Argon with Zephyr
---

This took my quite a while. Running WiFi on a Particle Argon is possible. However, some work is necessary to get it running. Just a quick note: the Argon is already discontinued (I know), but maybe you have some lying around and want to bring all the power of Zephyr to those boards (like I wanted to). And as you already made it to this page, I guess you are willing to put some afford into it. So let's get started!

# ESP32 WiFi Co-processor

The Argon uses a Nordic nRF52840 as its main processor and an ESP32 as a WiFi co-processor. In order to get the ESP32 working, the first step is to re-program the ESP32 with a fresh new firmware that also works with Zephyr. The problem is that you need to build the ESP32 firmware on your own and finally flash it as Adafruit did it.

## Building ESP-NCP

Unfortunately, it is not possible to neither use Particle's NCP firmware right away nor the one Espressif is offering. So it is necessary to adjust the Firmware a bit. But good news: I forked Espressif's [ESP-AT](https://github.com/espressif/esp-at) firmware and made the adjsutments so you just need to compile it.

The necessary steps are:

* Clone the repository.
* Setup ESP toolchain.
* Compile firmware.
* "Pack" firmware.

First, clone the [repository](https://github.com/christianhirsch/esp-at), then head over to the new folder and start setting up the ESP toolchain and compile the firmware:

```bash
git clone https://github.com/christianhirsch/esp-at
cd esp-at

```
