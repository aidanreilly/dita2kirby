# DITA-OT plugin com.ditalog.kirby.txt

This plugin generates textfiles for Kirby CMS. The DITA-OT plugin only works well if you have placed your DITA source files in a certain way. It is connected with work, but also means a new opportunity to restructure your topics modular.

This plugin is a slightly adopted version of Jarno Elovirta´s plugin _net.sourceforge.dita-ot.html_. It omits completely the navigation templates.

* Kirby CMS: [getkirby.com](http://getkirby.com)
* Documentation: [ditalog.com](http://www.ditalog.com/dita2kirby/documentation)

# Integration into the DITA Open Toolkit

1. Paste the folder _com.ditalog.kirby.txt_ into the plugin folder of your DITA-OT installation.
2. Do _ant -f integrator.xml_ at command level of your DITA-OT.
3. Use _com.ditalog.kirby.txt_ as transtype.