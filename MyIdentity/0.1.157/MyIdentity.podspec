Pod::Spec.new do |spec|
  spec.name = "MyIdentity"
  spec.version = "0.1.157"
  spec.swift_versions = '4.0'
  spec.summary = "MyIdentity."
  spec.description = <<-DESC
    My Identity Description
  DESC
  spec.homepage = "https://www.tietoevry.com/"
  spec.license = "TietoEVRY LICENSE"
  spec.author = { "Leif Yndestad" => "lyndestad@gmail.com" }
  spec.platform = :ios, "13.0"
  spec.source = { :git => 'git@github.com:tietoevryfs/sec-id-proofing-ios-sdk.git', :tag => spec.version.to_s, :branch => 'feature/fix-integration-2'}
  #spec.source = { :path => 'MyIdentitySDK.framework' }
  spec.exclude_files = ['MyIdentitySDK/Info.plist']
  spec.vendored_frameworks = ['MyIdentitySDK.framework', 'Frameworks/MobaiCore.xcframework']
  spec.dependency "AppAuth", "1.4.0"
  spec.dependency "PPBlinkID"
  spec.dependency "SwiftProtobuf"
  spec.dependency "Alamofire"
  spec.pod_target_xcconfig = {
	'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
	'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
	}
  spec.user_target_xcconfig = {
	'EXCLUDED_ARCHS[sdk=iphonesimulator*]' =>
	'arm64'
  }
end


