# IOTA Wallet.rs iOS Internal

The library is a low-level wrapper for the compiled version of [wallet.rs](https://github.com/iotaledger/wallet.rs) for iOS/MacOS.

It exposes 4 C functions:
```c
typedef void (*Callback)(const char *response);

void iota_initialize(Callback callback, const char *actor_id, const char *storage_path);
void iota_destroy(const char *actor_id);
void iota_send_message(const char *message);
void iota_listen(const char *actor_id, const char *id, const char *event_name);

```

## Install

```
pod 'IotaWalletInternal', :podspec => 'https://raw.githubusercontent.com/iotaledger/wallet-ios-internal/main/IotaWalletInternal.podspec'
```

## Supported architectures

- arm64_ios
- arm64_macos
- x86_64

## Known problems

- Cocoapods not always links against a pod that uses this as dependency, you should do it manually if there's a compilation error (e.g.: IotaWalletInternal not found)
- In case of some weird C++ errors, add the linker flag (in Other linker flags) `-lc++`
