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
      tell current window
        create tab with default profile
      end tell
      set sesh to current session of current window
    on error
      set term to (create window with default profile)
      tell term
        launch session "Default"
        set sesh to current session
      end tell
    end try
    
    tell sesh
      write text "cd " & theDir & ";clear;"
    end tell
  end tell
end CD_to
