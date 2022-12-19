# Apple Mobile Device (iOS/iPadOS) Implementation

The `Global - Do not Allow TikTok.mobileconfig` applies to mobile devices (iOS and iPadOS). It simply blocks the TikTok app within the App Store.

If the app is already installed, it **will not** uninstall it. However, if launched the app will immediately be terminated.

The 'Technology Services - Block TikTok.mobileconfig' applies to iOS, iPadOS, and tvOS devices. It adds the TikTok domains to a Blocklisted URLs list of a content filtering payload to prevent access to the domains in webbrowsers on the devices.
