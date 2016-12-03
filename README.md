# NAME

**moviebox-connect** - play MovieBox content on Linux/OSX.

# SYNOPSIS

**iOS** tool that allows to play content from iOS MovieBox application on computer running **Linux** or **OSX** without need of AppleTV or any special receiver. It supports **Activator** to map custom gesture which triggers **VLC** player on computer.

# INSTALLATION

## 1. iPhone

Add `http://load.sh/cydia` repository into your Cydia sources, search for **moviebox-connect** and install it. Open file `/var/mobile/moviebox-connect.txt` in iFile or Filza and fill in *operating system (linux/osx)*, *username*, *password*, and *hostname* of your **computer**. Open **Activator** and assign *moviebox-connect* to some gesture.

## 2. Computer

**Linux**

Install VLC and ssh.

```
sudo apt-get install vlc openssh-server
```

**OSX**

[Download](http://www.videolan.org/vlc/download-macosx.cs.html) and install **VLC**. On OSX ssh server is already installed but remote access needs to by switched on. Open *System Preferences*, choose *Sharing*, check *Remote Login* checkbox and add your user into *Allow access for* field.

# USAGE

Make sure iOS is connected to the same WiFi as your computer. Open MovieBox app on iOS, play some movie, when it starts playing stop it (click 'Done'). To watch video on your computer trigger your **Activator** gesture and video will start playing on your computer.

### Windows
There is alternative method which doesn't require ssh so it can also be used on windows. Instead of connecting to computer via ssh it uses iFile's webserver so VLC can connect to iPhone. To use this method, install iFile and after trigering Activator event switch on webserver in iFile. Then in VLC go to *Media* -> *Open network* and fill in `http://<name>.local:10000/tmp/moviebox.xspf` where *name* is iPhone hostname and can be found in *Settings->General->About->Name*.

# KNOWN ISSUES

moviebox-connect won't open video if previous movie is still playing on computer. Quit VLC  on your computer before you play next video.
