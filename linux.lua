--[[
ComputerCraft Linux - Codename Newrel

Version - Newrel

By LewisTehMinerz. DO NOT COPY (The only exception is for distro's)
]]--

local _G.cclinux = {
  distro = "ComputerCraft Linux - Codename Newrel",
  distroV = "Newrel",
  defaults = true,
}

term.clear()
term.setCursorPos( 1, 1 )
if not fs.exists( ".cclinux" ) then
  print( "Welcome to CCLinux! This is usually an API for distro's, but, you don't need one to run CCLinux!" )
  print( "This has barely any commands, so it's better to get a distro off 'cclinuxdistros.github.io' for the complete list of distro's!!" )
  print( "This installer will override the default shell with this. To uninstall, just write in the terminal (when running CCLinux) ':cclinux_uninstall'" )
  print( "Options: ':yes' for yes, ':no' for no." )
  write( "cclinux install$ " )
  input = read()
  if input = ":y" then
    l = fs.open( ".cclinux", "w" )
    l.write( "IGNORE ME" )
    l.close()
    print( "wrote .cclinux file" )
    print( "writing shell..." )
    local i = http.get( "https://raw.githubusercontent.com/LewisTehMinerz/ComputerCraftLinux/master/linshell.lua" )
    local s = fs.open( "linshell", "w" )
    s.write( i.readAll() )
    s.close()
    i.close()
    print( "writing startup..." )
    local st = fs.open( "startup", "w" )
    st.write( "shell.run( \"linshell\" ) " )
  end
end
