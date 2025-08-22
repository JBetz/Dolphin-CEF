[Dolphin Smalltalk](https://github.com/dolphinsmalltalk/Dolphin) language bindings to the [Chromium Embedded Framework (CEF)](https://bitbucket.org/chromiumembedded/workspace/projects/CEF). 

**Dolphin Version**: 7.2.1

**CEF Version**: [139.0.7258.139](https://cef-builds.spotifycdn.com/cef_binary_139.0.26%2Bg9d80e0d%2Bchromium-139.0.7258.139_windows32.tar.bz2)

## Why Dolphin-CEF?
For creating a custom browser on top of Chromium, or otherwise embedding web content inside of a native Windows app.

## Why not just use Microsoft Edge WebView2?

While simpler and already available in Dolphin 7, WebView has multiple limitations that make it unsuitable for anything beyond rendering web pages. The biggest one being that it only operates in windowed mode and doesn't support offscreen rendering. This subjects it to the [airspace problem](https://github.com/MicrosoftEdge/WebView2Feedback/issues/286), where it is impossible to render anything on top of a web page. And WebView being owned by Microsoft means that they can snoop on usage and hold the reins on bugfixes and feature development.

## Disclaimer
Currently, this library provides minimal support for use with Win32 widgets and Dolphin's MVP framework. Recommended usage is with [Dolphin-SDL](https://github.com/JBetz/Dolphin-SDL).

## Getting Started
* Install [Dolphin Smalltalk 7](https://github.com/dolphinsmalltalk/Dolphin)
* Install `Chromium Embedded Framework.pax` in a Dolphin image
* Copy everything inside this repo's `cef` directory into the same directory as your image, then extract the `libcef.zip` folder and move `libcef.dll` into the same directory. It needs to be compressed to get around GitHub's 100mb file limit.
* Inside the image, run `WebBrowserView example` to open a window with the Dolphin Github page

Alternatively, you can download [CEF Windows 32-bit binaries](https://cef-builds.spotifycdn.com/index.html), then copy everything inside the Release and Resources folders into the same directory as the image. The version you download will need to be the same as shown on the top of this README. You'll either need to use `cefclient.exe` from the sample application build or use `CefSubprocessRunner.exe` from this repo as the subprocess executable. From Dolphin's perspective, the only difference between them is that `CefSubprocessRunner.exe` sends additional events to the browser process for tracking events that aren't currently exposed by CEF, such as mouse over, focus, and navigation.

The source for `CefSubprocessRunner.exe` can be found in https://github.com/JBetz/CefSubprocessRunner.

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
^view
    parentView: shell;
    arrangement: 1;
    create;
    show;
    loadUrl: 'https://github.com/dolphinsmalltalk/Dolphin';
    yourself
```
