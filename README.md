# MacOS Accessibility request repository

This repository shows how to add your app to:

System Settings -> Privacy and Security -> Accessibility list

Date of repo creation: 2023 year, 

Swift 5

MacOs target > 11.0

Sandbox status: DOES NOT WORK WITH SANDBOX ENABLED ( details are here: https://developer.apple.com/forums/thread/24288 )

How to use with sandbox? 

> Worth noting that Sandboxed apps signed with Mac Development or official Mac App Store certificates WILL show the Accessibility prompt. But Developer ID signed apps will not show the prompt. This applies to 10.15 and 11.0 and possible 10.14 too. – 
Nick Moore
> 
> https://stackoverflow.com/a/50901425/4423545

So (looks like) this code does not do promts if app is sandboxed with Development sertificate, but promt will work on official release.



[![Accessibility permission request using Swift][1]][1]

  [1]: https://i.stack.imgur.com/cW0mk.gif

  
