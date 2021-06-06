Pod::Spec.new do |s|
  s.name             = 'SpringMenu'
  s.version          = '0.9.0'
  s.summary          = 'An awesome expandable menu for SwiftUI'
  s.description      = <<-DESC
An awesome expandable menu for SwiftUI. Clean, simple, and customizable.
DESC

  s.homepage         = 'https://github.com/ShabanKamell/SpringMenu'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'ShabanKamell' => 'sh3ban.kamel@gmail.com' }
  s.source           = { :git => 'https://github.com/ShabanKamell/SpringMenu.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ShaAhKa'

  s.swift_version = '5'
  s.ios.deployment_target = '13.0'
  s.source_files  = "Sources/**/*"
  s.exclude_files  = "Sources/Supporting Files/**/*"
  s.framework  = "Foundation"

end
