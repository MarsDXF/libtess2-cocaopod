
local action = _ACTION or ""

solution "libtess2"
	location ( "Build" )
	configurations { "Debug", "Release" }
	platforms {"native", "x64", "x32"}
  
	configuration "Debug"
		defines { "DEBUG" }
		flags { "Symbols", "ExtraWarnings"}

	configuration "Release"
		defines { "NDEBUG" }
		flags { "Optimize", "ExtraWarnings"}    


	project "tess2"
		language "C"
		kind "StaticLib"
		includedirs { "Include", "Source" }
		files { "Source/*.c" }
		targetdir("Build")
