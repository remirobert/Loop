#
#  Be sure to run `pod spec lint Loop.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "Loop"
  s.version      = "0.1"
  s.summary      = "Handle repetitive action in loop on iOS easily. With a swifty syntax."

  s.description  = <<-DESC
Handle repetitive action in loop on iOS easily. With a swifty syntax
                   DESC
  s.homepage     = "https://github.com/remirobert/Loop"
  s.license      = "MIT (example)"
  s.author             = { "rémi " => "remirobert33530@gmail.com" }
  s.source       = { :git => "https://github.com/remirobert/Loop", :tag => "0.1" }

  s.source_files  = "source", "Loop/*"
  s.exclude_files = "Classes/Exclude"

  s.frameworks = "QuartzCore"
end
