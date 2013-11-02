Pod::Spec.new do |s|
  s.name         = "OvershareKit"
  s.version      = "0.0.1"
  s.summary      = "A soup-to-nuts sharing library for iOS."
  s.homepage     = "https://github.com/overshare/overshare-kit"
  s.license      = { :type => 'MIT', :file => 'LICENSE'  }
  s.author       = { "Jared Sinclair" => "email@here", "Justin Williams" => "email@here" }
  s.source       = { :git => "https://github.com/overshare/overshare-kit.git", :commit => "93ff59d5e5b6caff70bdbad54cbf37fd2df364a3" } #, :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.frameworks   = 'UIKit'
  
  s.source_files = 'Overshare Kit/*.{h,m}'
  s.resources    = 'Overshare Kit/Images/*', 'Overshare Kit/*.xib'
  
  s.ios.deployment_target = '7.0'
  
  s.subspec 'ADN' do |ss|
  	ss.dependency 'ADNLogin'
  end
  
  s.subspec 'Pocket' do |ss|
  	ss.dependency 'PocketAPI'
  end
end

# Based on podspec from https://github.com/jhersh/overshare-kit
