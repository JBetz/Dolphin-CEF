# Dolphin-CEF

Dolphin Smalltalk language bindings to the Chromium Embedded Framework (CEF) library. This package is a rewrite and expansion of https://github.com/amaurel/dolphin-chrome-embedded, updated for Dolphin 7 and the current stable version of CEF (5993).

## Why Dolphin-CEF?
To build a better browser. And because browsers need to be reprogrammable, not by a broken language like JavaScript, but with a coherent and powerful language like Smalltalk.

Why not just use Microsoft Edge WebView2? While simpler and already implemented in Dolphin, WebView has multiple limitations that make it unsuitable for building a browser. The biggest one being that it only operates in windowed mode and doesn't support offscreen rendering. This subjects it to the [airspace problem](https://github.com/MicrosoftEdge/WebView2Feedback/issues/286), where it is impossible to render anything on top of the web page. It also makes it onerous to render a webpage in order to generate a thumbnail or any other purpose aside from the main browser view. Additionally, WebView has limited automation capabilities, and it being subject to Microsoft means that they can snoop on usage and hold the reins on bugfixes and feature development.

## Disclaimer
Currently, this library provides minimal support for use with Win32 widgets and Dolphin's MVP framework. Recommended usage is with [Dolphin-SDL](https://github.com/JBetz/Dolphin-SDL).

## Getting Started
* Install [Dolphin Smalltalk 7.1](https://github.com/dolphinsmalltalk/Dolphin)
* Install `Chromium Embedded Framework.pax` in a Dolphin image
* Download [CEF Windows 32-bit binaries](https://cef-builds.spotifycdn.com/index.html)
* Unpack the zip file and copy everything inside the Release and Resources into the same directory as the image
* Inside the image, run `WebBrowserView example` to open a window with the Dolphin Github page

## Example

```smalltalk
| shell view |
shell := ShellView new.
shell
    layoutManager: ProportionalLayout new;
    create;
    extent: 1200 @ 1000;
    show.
view := WebBrowserView new.
view
    parentView: shell;
    arrangement: 1;
    create;
    show.
view loadUrl: 'https://github.com/dolphinsmalltalk/Dolphin'
```

## To do
* reference counting
* automation API
