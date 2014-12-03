# DITA-OT plugin com.ditalog.kirby.txt

This plugin generates textfiles for Kirby CMS.

This plugin is a slightly adopted version of Jarno Elovirta´s plugin net.sourceforge.dita-ot.html. It omits completely the navigation templates.

# Under development

The plugin is still under development. Of course you will get txt-files as output. But it is necessary to arrange the dita source files in a certain way. As soon as I have finished I will document it.

* Kirby CMS: [getkirby.com](http://getkirby.com)
* History of the plugin: [ditalog.com](http://www.ditalog.com)

# Integration into the DITA Open Toolkit

1. Create a folder _com.ditalog.kirby.txt_ inside the plugin folder of your DITA-OT.
2. Copy and paste the plugin´s files and folders into this new plugin folder.
3. Do _ant -f integrator.xml_ at command level of your DITA-OT.
4. Use _com.ditalog.kirby.txt_ as transtype.