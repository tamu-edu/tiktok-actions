# Apple Mobile Device (iOS/iPadOS/tvOS) Implementation

The `.mobileconfig` applies to Apple devices (iOS, iPadOS, and tvOS). It  blocks the TikTok app within the App Store and adds the TikTok domains to a Blocklisted URLs list as part of a content filtering payload to prevent access to the domains from web browsers.

If the app is already installed, it **will not** uninstall it. However, if launched the app will immediately be terminated.
