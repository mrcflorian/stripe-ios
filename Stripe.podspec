Pod::Spec.new do |s|
  s.name                           = 'Stripe'
  s.version                        = '11.5.0'
  s.summary                        = 'Stripe is a web-based API for accepting payments online.'
  s.license                        = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage                       = 'https://stripe.com/docs/mobile/ios'
  s.authors                        = { 'Stripe' => 'support+github@stripe.com' }
  s.source                         = { :git => 'https://github.com/stripe/stripe-ios.git', :tag => "v#{s.version}" }
  s.frameworks                     = 'Foundation', 'Security', 'WebKit', 'PassKit', 'AddressBook', 'CoreLocation'
  s.weak_frameworks                = 'Contacts'
  s.requires_arc                   = true
  s.platform                       = :ios
  s.ios.deployment_target          = '8.0'
  s.public_header_files            = 'Stripe/PublicHeaders/*.h'
  s.source_files                   = 'Stripe/PublicHeaders/*.h', 'Stripe/*.{h,m}'
  s.ios.resource_bundle            = { 'Stripe' => 'Stripe/Resources/**/*' }
  s.compiler_flags                 = '-Wno-unguarded-availability'
end
