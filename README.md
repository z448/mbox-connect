# moviebox-connect

Watch MovieBox content on Linux/OSX.

# SYNOPSIS

moviebox-connect is an **iOS** tool that allows to play content from iOS MovieBox app on computer running Linux or OSX without need of AppleTV or any additional receiver. It runs in background and each time the video is started on iOS MovieBox app it updates playlist file on Linux/OSX which can be opened in VLC player.

# INSTALLATION

Make sure iOS is connected to the same WiFi as your computer.

####1.iPhone

Easy way: add `http://load.sh/cydia` repository into your Cydia sources search for **moviebox-connect** and install.

####2.Computer

**Linux**
Install VLC and ssh

```
sudo apt-get install vlc openssh-server
```

**OSX**
[Download](http://www.videolan.org/vlc/download-macosx.cs.html) and install **VLC**. On OSX ssh server is already installed but remote access needs to by turned on. Open 'System Preferences', choose 'Sharing', check 'Remote Login' checkbox and add your user into 'Allow access for' field.

# USAGE

Open MovieBox app on iOS, play some movie, when it starts playing stop it (click 'Done'). To watch video on your computer open `moviebox.xspf` on your `Desktop`.
Each time video is played in MovieBox app, it will be updated on computer.

