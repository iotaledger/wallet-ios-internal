#!/bin/sh
set -e

rustup target add aarch64-apple-ios
cargo build --target aarch64-apple-ios --release --lib
rustup target add x86_64-apple-ios
cargo build --target x86_64-apple-ios --release --lib
# rustup target add aarch64-apple-ios-sim
# cargo build --target aarch64-apple-ios-sim --release --lib
# rustup target add x86_64-apple-ios-macabi
# cargo +nightly build --release -Z build-std --target x86_64-apple-ios-macabi
# rustup target add aarch64-apple-ios-macabi
# cargo +nightly build --release -Z build-std --target aarch64-apple-ios-high macabi

rm -rf include
mkdir include
cp iota_wallet_ffi.h include/IOTAWalletInternal.h

touch include/module.modulemap
tee -a include/module.modulemap > /dev/null <<EOT
module IOTAWalletInternal {
    header "IOTAWalletInternal.h"
    export *
}
EOT

rm -rf IOTAWalletInternal.xcframework
xcodebuild -create-xcframework \
-library ./target/aarch64-apple-ios/release/libiota_wallet.a \
-headers ./include \
-library ./target/x86_64-apple-ios/release/libiota_wallet.a \
-headers ./include \
-output IOTAWalletInternal.xcframework