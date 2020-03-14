#
#  Be sure to run `pod spec lint TianRuiSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|



  spec.name         = "TianRuiSDK"
  spec.version      = "0.1.556"
  spec.summary      = "TianRui TRSDK"
  spec.description  = <<-DESC
			TRSDK is primarily used to provide portable, secure and reliable account systems and payment services to third-party applications. this
This article mainly describes how to use the client sdk payment interface for the developer's access.
                   DESC

  spec.homepage     = "https://github.com/TianRuiTheCompanyAcount/TRSDK"
  spec.license      	 = "MIT"
  spec.author            = { "TianRui" => "fdpuvqo@yeah.net" }
  spec.platform    	 = :ios, "10.0"
  spec.source 		 = { :git => "https://github.com/TianRuiTheCompanyAcount/TRSDK.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks  = "TRSDK.Framework"
  spec.requires_arc = true
  spec.resource = "TRSource.bundle"

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  #spec.exclude_files = "Classes/Exclude"

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


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "TRSDK.Framework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.



  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  spec.dependency 'Firebase/Core'
  spec.dependency 'Firebase/Auth'
  spec.dependency 'GoogleSignIn'
  spec.dependency 'FBSDKLoginKit'
  spec.dependency 'Masonry', '~> 1.1.0'
  spec.dependency 'AFNetwork', '~> 0.1.0'
  spec.dependency 'MBProgressHUD', '~> 0.9.2'
  spec.dependency 'FCUUID', '~> 1.3.1'
  spec.dependency 'UMCCommon'
  spec.dependency 'UMCAnalyticsGame', '~> 6.0.3+G'
  spec.dependency 'UMCCommonLog'
  spec.dependency 'UMCSecurityPlugins'
  spec.dependency 'Adjust', '~> 4.15.0'
  spec.dependency 'CocoaAsyncSocket', '~> 7.6.3'

end
