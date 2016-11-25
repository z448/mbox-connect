# NAME

**moviebox-connect** - play MovieBox content on Linux/OSX.

# SYNOPSIS

**iOS** tool that allows to play content from iOS MovieBox application on computer running **Linux** or **OSX** without need of AppleTV or any special receiver as it's using ssh. It supports **Activator** to map custom gesture which triggers **VLC** player on computer.

# INSTALLATION

##1. iPhone

Add `http://load.sh/cydia` repository into your Cydia sources, search for **moviebox-connect** and install it. Open file `/var/mobile/moviebox-connect.json` and fill *username*, *password* ,  *IP address* and *operating system (linux/osx)* of your **computer**. Open **Activator** and assign *moviebox-connect* to any gesture.

##2. Computer

**Linux**

Install VLC and ssh.

```
sudo apt-get install vlc openssh-server
```

**OSX**

[Download](http://www.videolan.org/vlc/download-macosx.cs.html) and install **VLC**. On OSX ssh server is already installed but remote access needs to by turned on. Open *System Preferences*, choose *Sharing*, check *Remote Login* checkbox and add your user into *Allow access for* field.

# USAGE

Make sure iOS is connected to the same WiFi as your computer. Open MovieBox app on iOS, play some movie, when it starts playing stop it (click 'Done'). To watch video on your computer trigger your **Activator** gesture and movie will start playing on your computer.

