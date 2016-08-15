# cellularshortkey
Create a shortkey to connect to your Cellular on windows. This will first attempt to disconnect your Wireless LAN connection (if its connected), then connect to your cellular.

## Setup:
The setup requires manually entering your Sim cards Icc Id and Subscriber Id in the profile.XML file and defining your shortkey in the shortcut.

### Steps

1. Clone the cellularshortkey repository
2. Open a command prompt (start > cmd.exe)
3. Enter the command: `netsh mbn show readyinfo interface="Cellular"`. Example output:
	
	```
        Ready information for interface Cellular:
        -------------------------------------
            State            : Ready to power up and register
            Emergency mode   : Off
            Subscriber Id    : XXXXXXXXXXXXXXX
            SIM ICC Id       : XXXXXXXXXXXXXXXXXX
            Number of telephone numbers  : 0
    ```
4. In the cloned repo folder, open the profile.xml. Copy and paste the `Subscriber Id` into the `<SubscriberID>` field and the `SIM ICC Id` into the `<SimIccID>` field, save and exit
6. In the cloned repo folder, right click `shortcutcellular.lnk` > Properties. In the Shortcut Key, add your desired Shortkey. Press OK, and test your shortcut!

## QA
**Q: The bat file works but the shortcut doesn't!**

A: Make a new shortcut: right click on desktop > new shortcut > browse to bat file > presto

**Q: It doesn't reconnect to my Wifi when I run it again!**

A: Not a bug, its a feature (aka not included)

