on run {input, parameters}
  tell application "Finder"
    set dir_path to quoted form of (POSIX path of (folder of the front window as alias))
  end tell
  CD_to(dir_path)
end run

on CD_to(theDir)
  tell application "iTerm"
    activate

    try
      set term to current terminal
    on error
      set term to (make new terminal)
    end try

    tell term
      launch session "Default"
      set sesh to current session
    end tell

    tell sesh
      write text "cd " & theDir
    end tell
  end tell
end CD_to
