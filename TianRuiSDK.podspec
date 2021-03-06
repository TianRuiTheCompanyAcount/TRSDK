#
#  Be sure to run `pod spec lint TianRuiSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|



  spec.name         = "TianRuiSDK"
spec.version="0.1.581"
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
  spec.dependency 'Firebase/Core', '6.29.0'
  spec.dependency 'Firebase/Auth', '6.29.0'
  spec.dependency 'Firebase/Analytics', '6.29.0'
  spec.dependency 'Firebase/AdMob', '6.29.0'
  spec.dependency 'GoogleMobileAdsMediationFacebook','5.10.0.0'
  spec.dependency 'GoogleMobileAdsMediationAppLovin', '6.13.0.0'
  spec.dependency 'GoogleMobileAdsMediationInMobi', '9.0.7.2'
  spec.dependency 'GoogleMobileAdsMediationIronSource', '6.17.0.0'
  spec.dependency 'GoogleMobileAdsMediationUnity', '3.4.6.0'
  spec.dependency 'FBSDKShareKit', '7.1.1'
  spec.dependency 'FBSDKLoginKit', '7.1.1'
  spec.dependency 'Masonry', '1.1.0'
  spec.dependency 'AFNetworking', '4.0.1'
  spec.dependency 'MBProgressHUD', '1.2.0'
  spec.dependency 'FCUUID', '1.3.1'
  spec.dependency 'CocoaAsyncSocket', '7.6.3'
  spec.dependency 'AppsFlyerFramework', '5.4.1'

end
