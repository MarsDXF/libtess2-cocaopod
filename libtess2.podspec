Pod::Spec.new do |spec|

  spec.name         = "libtess2"
  spec.version      = "1.0.2"
  spec.summary      = "This is refactored version of the original libtess which comes with the GLU reference implementation."
  spec.description  = "The code is good quality polygon tesselator and triangulator. The original code comes with rather horrible interface and its' performance suffers from lots of small memory allocations. The main point of the refactoring has been the interface and memory allocation scheme."

  spec.homepage     = "https://github.com/memononen/libtess2"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Vasiliy Shaydullin" => "dxfproviewer@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/Vasiliy"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  spec.ios.deployment_target = "10.3"
  spec.osx.deployment_target = "10.12"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :git => "https://github.com/MarsDXF/libtess2-cocaopod.git", :tag => spec.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.source_files  = "Sources/Source/*.{h,c}", "Sources/Source/tesselator.h", "Sources/Source/bucketalloc.h", "Sources/Source/dict.h", "Sources/Source/geom.h", "Sources/Source/mesh.h", "Sources/Source/priorityq.h", "Sources/Source/sweep.h", "Sources/Source/tess.h",
      "Sources/premake4.lua"
  
  

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"
  spec.preserve_paths = "Sources/**/*"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  spec.pod_target_xcconfig = {
    "HEADER_SEARCH_PATHS" => "$(PODS_TARGET_SRCROOT)/Sources/Source $(PODS_TARGET_SRCROOT)/Sources/Source.",
  }
  # spec.dependency "JSONKit", "~> 1.4"

end
