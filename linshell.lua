if term.isColour() then
	promptColour = colours.blue
	textColour = colours.white
	bgColour = colours.black
else
	promptColour = colours.white
	textColour = colours.white
	bgColour = colours.black
end
local tCommandHistory = {}
while not bExit do
    term.setBackgroundColor( bgColour )
    term.setTextColour( promptColour )
    write( shell.dir() .. "@cclinux$ " )
    term.setTextColour( textColour )
    local sLine = read( nil, tCommandHistory )
    if string.sub( sLine, 1 ) == ":" then
      local linCMD = string.sub( sLine, 1 )
      if linCMD == "cclinux_uninstall" then
        print( "uninstalling..." )
        fs.delete( "linshell" )
        fs.delete( "startup" )
        print( "finished" )
        sleep( 2 )
        os.reboot()
      elseif linCMD == "cclinux_shutdown" then
        os.shutdown()
      elseif linCMD == "cclinux_reboot" then
        os.reboot()
      elseif linCMD == "install_distro" then
        print( "Goto 'cclinuxdistros.github.io' for the complete list of CCLinux distro's!" )
      else
        print( linCMD .. " is a bad command." )
      end
    else
      shell.run( sLine )
    end
end
