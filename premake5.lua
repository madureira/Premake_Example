workspace "Premake_Example"
   configurations { "Debug", "Release" }
   platforms { "x32", "x64" }

project "Premake_Example"
   kind "ConsoleApp"
   language "C++"
   objdir "build/%{cfg.platform}_%{cfg.buildcfg}"
   targetdir "bin/%{cfg.platform}_%{cfg.buildcfg}"

   files { "**.h", "**.cpp" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
