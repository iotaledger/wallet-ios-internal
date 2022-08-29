Pod::Spec.new do |s|  
    s.name              = 'IotaWalletInternal'
    s.version           = '0.3.5'
    s.summary           = 'Iota Wallet Internal'
    s.homepage          = 'https://github.com/iotaledger/wallet-ios-internal'

    s.author            = { 'Pasquale Ambrosini' => 'pasquale.ambrosini@gmail.com' }
    s.license           = { :type => 'Apache 2.0', :file => 'LICENSE' }

    s.source            = { :http => "https://files.iota.org/firefly/bindings/wallet-rs-ios-bindings-0.3.5.zip" }
    s.ios.deployment_target = '12.0'
    s.osx.deployment_target = '10.10'
    s.vendored_frameworks = 'IOTAWalletInternal.xcframework'
end
