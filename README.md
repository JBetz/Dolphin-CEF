# Dolphin-CEF

[Dolphin Smalltalk](https://github.com/dolphinsmalltalk/Dolphin) language bindings to the [Chromium Embedded Framework (CEF)](https://bitbucket.org/chromiumembedded/workspace/projects/CEF). 

**Dolphin Version**: 7.2

**CEF Version**: 6099

## Why Dolphin-CEF?
For creating a custom browser on top of Chromium, or otherwise embedding web content inside of a native Windows app.

## Why not just use Microsoft Edge WebView2?

While simpler and already available in Dolphin 7, WebView has multiple limitations that make it unsuitable for anything beyond rendering web pages. The biggest one being that it only operates in windowed mode and doesn't support offscreen rendering. This subjects it to the [airspace problem](https://github.com/MicrosoftEdge/WebView2Feedback/issues/286), where it is impossible to render anything on top of a web page. And WebView being owned by Microsoft means that they can snoop on usage and hold the reins on bugfixes and feature development.

## Disclaimer
Currently, this library provides minimal support for use with Win32 widgets and Dolphin's MVP framework. Recommended usage is with [Dolphin-SDL](https://github.com/JBetz/Dolphin-SDL).

## Getting Started
* Install [Dolphin Smalltalk 7.1](https://github.com/dolphinsmalltalk/Dolphin)
* Install `Chromium Embedded Framework.pax` in a Dolphin image
* Copy everything inside this repo's `cef` directory into the same directory as your image, then extract the `libcef.dll.zip` file in the same directory (it needs to be compressed to get around GitHub's 100mb file limit)
* Inside the image, run `WebBrowserView example` to open a window with the Dolphin Github page

Alternatively, you can download [CEF Windows 32-bit binaries](https://cef-builds.spotifycdn.com/index.html), then unpack the zip file and copy everything inside the Release and Resources into the same directory as the image. In that case, you'll either need to use `cefclient.exe` from the sample application build or use `CefSubrocessRunner.exe` from this repo as the subprocess executable. From Dolphin's perspective, the only difference between them is that `CefSubprocessRunner.exe` sends an additional event to the browser process for tracking mouse over events.


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
