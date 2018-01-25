#
# Be sure to run `pod lib lint liw.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'liw'
  s.version          = '0.1.0'
  s.summary          = 'label in waiting - ui for displaying pending network content'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
label in waiting - ui for displaying pending network content.
                       DESC

  s.homepage         = 'https://github.com/sfwalsh/liw'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sfwalsh' => 'sfwalshappdev@gmail.com' }
  s.source           = { :git => 'https://github.com/sfwalsh/liw.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'liw/Classes/**/*'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  # s.resource_bundles = {
  #   'liw' => ['liw/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
