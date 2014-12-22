@echo off
@rem Batch script for DITA transformation
@rem This batchfile has 1 argument (%1), this is the transformation format
@rem Choices: dita2pdf, dita2xhtml, dita2epub, dita2kindle, dita2tocjs (only for DITA-OT 1.5.4)
@rem Default = dita2pdf
@rem Example 1: build-sample
@rem Example 2: build-sample dita2kirby
@rem The variable pubname should have the value of the name of the ditamap without extension

ant -f C:/Users/A.Petersell/Dropbox/com.ditalog.kirby.txt/sample/build-sample.xml -Dpubname=sample -logger org.dita.dost.log.DITAOTBuildLogger %1