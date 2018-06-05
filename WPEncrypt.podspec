#
# Be sure to run `pod lib lint WPEncrypt.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WPEncrypt'
  s.version          = '0.1.0'
  s.summary          = 'A short description of WPEncrypt.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/gwpp/WPEncrypt'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gwpp' => 'ganwenpeng1993@163.com' }
  s.source           = { :git => 'https://github.com/gwpp/WPEncrypt.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.subspec 'RSA' do |rsa|
      rsa.source_files = 'WPEncrypt/Classes/RSA'
      rsa.frameworks = 'Foundation', 'Security'
  end
  
  s.subspec 'TEA' do |tea|
      tea.source_files = 'WPEncrypt/Classes/XXTEA'
      tea.frameworks = 'Foundation'
  end
end
