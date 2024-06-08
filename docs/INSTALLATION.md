# Installation

Phix for Windows or Linux platforms can be downloaded from [the official site][Download].

After installation, the directory layout should match that given in the [documentation][Installation].

On Windows you may need to make C:\Program Files[ (x86)]\Phix\ writeable (bit naughty I know, but until someone
steps up and actually helps me fix it, that's just the way it is).

Lastly on Windows (only), pdemo.exw is automatically run to allow registry settings and the like to be tweaked, 
with some fairly copious notes for that hidden behind the "Help" button (on the Settings tab of pdemo). However
that probably hasn't really worked properly since Windows 7, though you should be able to create and manually 
merge a demo\pGUI\pdemo\setup.reg file, and check that it worked by re-running pdemo and seeing that everything 
on the Settings Tab (esp path) is now green. You may also need to run System Settings or otherwise broadcast a 
system-wide WM_SETTINGCHANGE message (pdemo can do that via the actions dropdown) to force the updated path in 
the registry to be reloaded (or reboot). Otherwise you'll have to set the path to the phix executable manually.
Also, the prl.cmd ditty in the main phix directory will reload the path from the registry in an open console.
[Likewise, should anyone fancy a bash at making that fully open source code work they are more than welcome.]
Summary: If running 'p' in the exercism directory doesn't say "not recognised", you've nailed it.


[Installation]: http://phix.x10.mx/docs/html/installation.htm
[Download]: http://phix.x10.mx/download.php

