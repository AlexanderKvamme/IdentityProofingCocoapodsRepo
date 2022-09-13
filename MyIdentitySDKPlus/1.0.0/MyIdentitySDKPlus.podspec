
Pod::Spec.new do |spec|
  spec.name               = 'MyIdentitySDKPlus'
  spec.version            = '1.0.0'
  spec.homepage           = "https://www.tietoevry.com/"
  spec.license = { :type => 'Tietoevry License', :file => 'License.txt' }
  spec.authors            = { 'Alexander Kvamme' => 'alexanderkvamme@tietoevry.com' }
  spec.summary            = 'MyIdentitySDK with additional layout components'
  spec.platform           = :ios, '13.0'
  spec.source             = { :http => 'file:' + __dir__ + '/MyIdentitySDKPlus.xcframework.zip', :type => "zip" }
  spec.framework          = 'UIKit'
  spec.vendored_framework = 'MyIdentitySDKPlus.xcframework'

  # Cocoapods dependencies
  spec.dependency 'MyIdentitySDK'

  # Temporarily exclude arm64 simulator architectures
  # Add these in later to make sim work on M1/M2 computers
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end


