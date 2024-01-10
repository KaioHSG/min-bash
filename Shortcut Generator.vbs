set wscriptShell = CreateObject("WScript.shell")
localDir = wscriptShell.CurrentDirectory
desktopDir = wscriptShell.SpecialFolders("Desktop")
userDir = wscriptShell.ExpandEnvironmentStrings("%UserProfile%")
set minttyShortcut = wscriptShell.CreateShortcut(desktopDir + "\Bash (Mintty).lnk")
minttyShortcut.IconLocation = localDir + "\bash-icon.ico"
minttyShortcut.TargetPath = localDir + "\usr\bin\mintty.exe"
minttyShortCut.Arguments = " -i '" + localDir + "\bash-icon.ico' -~ -"
minttyShortCut.Save
set bashShortCut = wscriptShell.CreateShortcut(desktopDir + "\Bash (CMD).lnk")
bashShortCut.IconLocation = localDir + "\bash-icon.ico"
bashShortCut.TargetPath = localDir + "\bin\bash.exe"
bashShortCut.WorkingDirectory = userDir
bashShortCut.Save