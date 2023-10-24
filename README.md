# Why Dolphin-CEF?
To build a better browser. And because browsers need to be reprogrammable, not by a broken language like JavaScript, but with a coherent and powerful language like Smalltalk.

## Disclaimer
This library provides minimal support for use with Win32 widgets and Dolphin's MVP framework, since we're using SDL and a custom UI framework instead.

## Getting Started
* Clone the repo
* Save a Dolphin Smalltalk image in `./example`
* Load package `Chromium Embedded Framework.pax`
* Run `CefWebView example`

## Known Issues
* When using the BrowserSubprocess executable, CEF's renderer process throws divide by zero exception 

## To do
* Clean shutdown
