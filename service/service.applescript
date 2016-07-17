on run {input, parameters}
  tell application "Finder"
    set dir_path to quoted form of (POSIX path of (input as alias))
  end tell
  CD_to(dir_path)
end run

on CD_to(theDir)
  tell application "iTerm"
    activate

    try
      set t to the last terminal
    on error
      set t to (make new terminal)
    end try

    tell t
      launch session "Default Session"
      tell the last session
        write text "cd " & theDir
      end tell
    end tell
  end tell
end CD_to
