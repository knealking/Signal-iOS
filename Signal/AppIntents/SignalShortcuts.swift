//
// Copyright 2026 Signal Messenger, LLC
// SPDX-License-Identifier: AGPL-3.0-only
//

import AppIntents

/// Exposes Signal's App Intents to the Shortcuts app and Siri.
@available(iOS 16.0, *)
struct SignalShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: SignalScheduleMessageIntent(),
            phrases: [
                "Schedule a \(.applicationName) message",
                "Schedule a message with \(.applicationName)",
                "Send a \(.applicationName) message later",
            ],
            shortTitle: LocalizedStringResource(
                "APP_INTENTS_SCHEDULE_MESSAGE_SHORT_TITLE",
                defaultValue: "Schedule message"
            ),
            systemImageName: "clock"
        )
    }
}
