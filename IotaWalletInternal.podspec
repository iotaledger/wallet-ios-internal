Pod::Spec.new do |s|  
    s.name              = 'IotaWalletInternal'
    s.version           = '0.3.5'
    s.summary           = 'Iota Wallet Internal'
    s.homepage          = 'https://github.com/iotaledger/wallet-ios-internal'

    s.author            = { 'Pasquale Ambrosini' => 'pasquale.ambrosini@gmail.com' }
    s.license           = { :type => 'Apache 2.0', :file => 'LICENSE' }

    s.source            = { :http => "https://drive.google.com/open?id=12RI79nY4grqt2Vg9JBK3GQ4ldsOBEJIv&authuser=0" }
    s.ios.deployment_target = '12.0'
    s.osx.deployment_target = '10.10'
    s.vendored_frameworks = 'IOTAWalletInternal.xcframework'
end
