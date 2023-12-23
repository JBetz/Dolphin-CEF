# Dolphin-CEF

Dolphin Smalltalk language bindings to the Chromium Embedded Framework (CEF). This package is a rewrite and expansion of https://github.com/amaurel/dolphin-chrome-embedded, updated for Dolphin 7 and the current stable version of CEF (6045).

## Why Dolphin-CEF?
For creating a custom browser on top of Chromium, or otherwise embedding web content inside of a native Windows app.

## Why not just use Microsoft Edge WebView2?

While simpler and already available in Dolphin 7, WebView has multiple limitations that make it unsuitable for anything beyond rendering web pages. The biggest one being that it only operates in windowed mode and doesn't support offscreen rendering. This subjects it to the [airspace problem](https://github.com/MicrosoftEdge/WebView2Feedback/issues/286), where it is impossible to render anything on top of a web page. It also makes basic functionality like generating a thumbnail onerous and provides limited access to a web page's JavaScript runtime. Additionally, WebView has limited automation capabilities, and it being subject to Microsoft means that they can snoop on usage and hold the reins on bugfixes and feature development.

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
