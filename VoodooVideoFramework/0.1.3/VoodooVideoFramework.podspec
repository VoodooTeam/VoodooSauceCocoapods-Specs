
Pod::Spec.new do |s|
  s.name             = 'VoodooVideoFramework'
  s.version          = '0.1.3'
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

  s.vendored_frameworks = 'VoodooVideoFramework.framework'
  s.source_files = ['main.swift']
  s.frameworks = 'AVFoundation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport'

  s.static_framework = true
  s.dependency 'Google-Mobile-Ads-SDK'
end
