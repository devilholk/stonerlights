This is the kicad schematics and board layout for one of the lamps.
The LED's are bought from ledz.com the other parts are availble at a bunch of places though I got it from digikey.com and some parts from ebay.

I have also used models and libraries from http://smisioto.no-ip.org/elettronica/kicad/kicad-en.htm
There you can download 3D models for this design

I have been pondering how to make sure the device is protected if the regulator fails.
If the regulator fails it will typically just let the input voltage right trough which will destroy the RF module and the STM32F100

To prevent this a crowbar and a fuse is needed.

which will handle 200 mA or 500 mA during a 100 µS peak.

Another feature would be a diode to make sure you can only connect the power supply one way

and ofcourse a fuse to protect the other stuff if the regulator fails.

Summary: 12V goes to RGB LED's and to a fuse, rectifier diode and then the zener as crowbar.
The fuse must be fast enough to protect the zener but not so fast that it breaks on inrush current.

Suggestions:

crowbar       http://www.mouser.com/ds/2/315/DZ2W036_DED-24169.pdf
fools diode   http://www.mouser.com/ds/2/149/RS1G-192003.pdf
fuse          http://www.mouser.com/ds/2/358/typ_USFF_1206-217695.pdf    50 mA (will actually trip on 200 mA)
