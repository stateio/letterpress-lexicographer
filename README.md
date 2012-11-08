letterpress-lexicographer
=========================

This app allows you to add any words you want to the Letterpress dictionary.  Never lose again!

No jailbreak required!

Setup
-------------
You'll need an iPhone or iPad with Letterpress (https://itunes.apple.com/ca/app/letterpress-word-game/id526619424?mt=8) installed.  

### Install libimobiledevice (http://www.libimobiledevice.org/).  

Make sure that you get the latest unstable version (1.1.4)

On OS X
`brew install libimobiledevice --HEAD`

On Linux (Debian flavour)
`sudo apt-get install libimobiledevice`

### Install letterpress-lexicographer and its dependencies. 

``` shell
git clone https://github.com/stateio/letterpress-lexicographer.git
cd letterpress-lexicographer
bundle install
```

Usage
-----
1. Plug in your iPhone or iPad into your computer.  
2. Make sure that Letterpress is installed, and only one iPhone or iPad is plugged in.
3. Run `./letterpress-lexicographer.rb`
4. Add words to the Letterpress dictionary!

Example
-------

![Before](http://blog.ontoillogical.com/assets/images/letterpress/before.png)

```
 [*] Connecting to iDevice
 [*] Connected to iDevice. UDID:REDACTED
 [*] Accessing Letterpress app
 [*] Accessed Letterpress app
 [?] What word would you like to add? (/q to quit)
  -> szug
 [+] Reading word-list /Letterpress.app/o/sz.txt
 [+] Inserting word szug into word-list /Letterpress.app/o/sz.txt
 [+] Successfully added word szug.  You can play it now!
```

![After](http://blog.ontoillogical.com/assets/images/letterpress/after.png)