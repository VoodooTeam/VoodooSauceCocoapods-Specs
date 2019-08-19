
Pod::Spec.new do |s|
  s.name             = 'VoodooVideoFramework'
  s.version          = '0.1.17'
  s.summary          = 'Detect if user is European and present GDPR modal if needed'

  s.description      = <<-DESC
  Detect if user is European and present GDPR modal if needed
  GDPR text versioning
  Plug your custom view controller in GDPRService setup to have control styling
                       DESC

  s.homepage         = 'https://www.voodoo.io'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jennifer Lim' => 'jennifer@voodoo.io' }
  s.source           = { :git => 'git@github.com:VoodooTeam/VoodooVideo-Framework-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.frameworks = 'AVFoundation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport'
  s.static_framework = true
  s.dependency 'Google-Mobile-Ads-SDK'

  framework             = s.name 
  s.source_files        = [ "%s.framework/**/*.{h,m}" % [framework] ]
  s.preserve_paths      = "%s.framework" % [framework] 
  s.public_header_files = "%s.framework/**/*.h" % [framework] 
  s.vendored_frameworks = '%s.framework' % [framework] 
  s.resources           = '%s.bundle' % [framework] 

end
