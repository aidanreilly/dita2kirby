# DITA-OT plugin com.ditalog.kirby.txt

This plugin generates textfiles for Kirby CMS.

This plugin is a slightly adopted version of Jarno Elovirta´s plugin _net.sourceforge.dita-ot.html_. It omits completely the navigation templates.

# Under development

The plugin is still under development. Of course you will get txt-files as output. But it is necessary to arrange the dita source files in a certain way. As soon as I have finished I will document it.

* Kirby CMS: [getkirby.com](http://getkirby.com)
* Documentation in progress: [ditalog.com](http://http://www.ditalog.com/dita2kirby/documentation)

# Integration into the DITA Open Toolkit

1. Paste the folder _com.ditalog.kirby.txt_ into the plugin folder of your DITA-OT installation.
2. Do _ant -f integrator.xml_ at command level of your DITA-OT.
3. Use _com.ditalog.kirby.txt_ as transtype.