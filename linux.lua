term.clear()
term.setCursorPos( 1,1 )
write( "CCLinux 0.1 load... " )
if not fs.exists( ".linuxCC" ) then
  term.setTextColor( colors.red )
  write( "[ err ]" )
  term.setTextColor( colors.white )
  printError( "[ CCLINUX ] An error occured while trying to load CCLinux. A log file ( \"cclinuxerr.log\" ) has been created." )
  i = fs.open( "cclinuxerr.log", "w" )
  i.write( "[ CCLinux ] Ver = 0.1" )
  i.write( "[ CCLinux ] Load [ err ]" )
  i.write( "[ CCLinux ] Missing: \".linuxCC\" " )
  i.close()
  error( "[ CCLinux ] TERMINATED", 0 )
else
  term.setTextColor( colors.green )
  write( "[ ok ]" )
  term.setTextColor( colors.white )
end
