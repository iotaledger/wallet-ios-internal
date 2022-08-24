# IOTA Wallet.rs iOS Internal

The library is a low-level wrapper for the compiled version of [wallet.rs](https://github.com/iotaledger/wallet.rs) for iOS/MacOS.

It exposes 4 C functions:
```c
typedef struct iota_wallet_handle iota_wallet_handle_t;

typedef void (*Callback)(const char* response, const char* error, void* context);

extern iota_wallet_handle_t* iota_initialize(const char* manager_options, char* error_buffer, size_t error_buffer_size);
extern void iota_destroy(iota_wallet_handle_t*);
extern void iota_send_message(iota_wallet_handle_t* wallet_handle, const char* message, Callback callback, void* context);
extern int8_t iota_listen(iota_wallet_handle_t* wallet_handle, const char* event_types, Callback callback, void* context, char* error_buffer, size_t error_buffer_size);

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
