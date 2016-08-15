# cellularshortkey
Create a shortkey to connect to your Cellular on windows. This will first attempt to disconnect your Wireless LAN connection, then connect to your cellular.

## Setup:
The setup requires manually entering your Sim cards IccId and Subscriber Id in the profile.XML file. Then, you create a windows shortcut to the "run.bat" file and define your own shortkey. 

## Steps

1. Clone the cellularshortkey repository
2. Open a command prompt (start > cmd.exe)
3. Enter the command: `netsh mbn show readyinfo interface"Cellular"`

Example output:

    Ready information for interface Cellular:
    -------------------------------------
        State            : Ready to power up and register
        Emergency mode   : Off
        Subscriber Id    : XXXXXXXXXXXXXXX
        SIM ICC Id       : XXXXXXXXXXXXXXXXXX
        Number of telephone numbers  : 0

4. Open the profile.xml that you cloned from the repo
5. Copy and paste the `Subscriber Id` in the <SubscriberID> field and the `SIM ICC Id` into the <SimIccID> field, save and exit
6. Right click on your windows desktop, and select New > Shortcut
7. Browse to the connectcellular.bat, and press Next and Finish
8. Right click on your shortcut > Properties. in the Shortcut Key field, add your desired shortcut, and press OK. 



