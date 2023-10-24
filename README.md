# What is Dolphin-CEF?

Dolphin Smalltalk language bindings for the Chromium Embedded Framework (CEF). This package is a rewrite and expansion of https://github.com/amaurel/dolphin-chrome-embedded, updated for Dolphin 7 and the current stable version of CEF (5993).

# Why Dolphin-CEF?
To build a better browser. And because browsers need to be reprogrammable, not by a broken language like JavaScript, but with a coherent and powerful language like Smalltalk.

## Disclaimer
This library provides minimal support for use with Win32 widgets and Dolphin's MVP framework, since we're using SDL and a custom UI framework instead.

## Getting Started
* Install [Dolphin Smalltalk 7.1](https://github.com/dolphinsmalltalk/Dolphin)
* Download [CEF Windows 32-bit binaries](https://cef-builds.spotifycdn.com/index.html)

## Known Issues
* When using the BrowserSubprocess executable, CEF's renderer process throws divide by zero exception 

## To do
* Clean shutdown
