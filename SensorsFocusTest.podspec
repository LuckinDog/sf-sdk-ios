Pod::Spec.new do |s|
  s.name         = 'SensorsFocusTest'
  s.version      = '0.4.3'
  s.summary      = 'SDK Test'
  s.homepage     = 'http://www.sensorsdata.cn'
  s.license      = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.source       = { :git => 'https://github.com/LuckinDog/sf-sdk-ios.git', :tag => 'v' + s.version      = '0.4.3'
  s.author       = 'Yuguo Chen'
  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.cocoapods_version = '>= 1.5.0'
  s.ios.framework = 'UIKit', 'Foundation'
  s.dependency 'SensorsAnalyticsSDK', '>=2.0.3'
  s.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER': 'com.sensorsdata.SensorsFocus'}
  s.static_framework = true
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  base_dir = 'SensorsFocus/'
  s.resource = base_dir + 'SensorsFocus.bundle'
  s.vendored_frameworks = base_dir + 'SensorsFocus.framework'

end
