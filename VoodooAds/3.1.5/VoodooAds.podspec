Pod::Spec.new do |s|
  s.name             = 'VoodooAds'
  s.version          = '3.1.5'
  s.summary          = 'Voodoo Ads iOS SDK is a framework enabling in-app advertising.'

  s.description      = <<-DESC
  Voodoo Ads is an SDK allowing your app/game to display ads in the game using one of the ad formats supported (banner, interstitial, rewarded... etc) and several assets (videos, images, playables... etc).
                       DESC

  s.homepage         = 'https://www.voodoo.io'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Med Hajlaoui' => 'mhajlaoui@voodoo.io' }
  s.source           = { :git => 'https://github.com/voodooext/voodoo-ads-ios-framework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  framework             = s.name 
  s.source_files        = [ "%s.framework/**/*.{h,m}" % [framework] ]
  s.preserve_paths      = "%s.framework" % [framework] 
  s.public_header_files = "%s.framework/**/*.h" % [framework] 
  s.vendored_frameworks = '%s.framework' % [framework] 
  s.resources           = '%s.framework/*.bundle' % [framework] 

end
