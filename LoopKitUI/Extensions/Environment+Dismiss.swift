//
//  Environment+Dismiss.swift
//  Loop
//
//  Created by Michael Pangburn on 4/15/20.
//  Copyright © 2020 LoopKit Authors. All rights reserved.
//

import SwiftUI


private struct PresentationDismissalKey: EnvironmentKey {
    static let defaultValue = {}
}


extension EnvironmentValues {
    public var dismissAction: () -> Void {
        get { self[PresentationDismissalKey.self] }
        set { self[PresentationDismissalKey.self] = newValue }
    }
}

// MARK: - Therapy Help Destination

public struct TherapyHelpDestination {
    public let view: AnyView?

    public init(_ view: AnyView? = nil) {
        self.view = view
    }

    public static let empty = TherapyHelpDestination()
}

private struct TherapyHelpDestinationKey: EnvironmentKey {
    static let defaultValue = TherapyHelpDestination.empty
}

extension EnvironmentValues {
    public var therapyHelpDestination: TherapyHelpDestination {
        get { self[TherapyHelpDestinationKey.self] }
        set { self[TherapyHelpDestinationKey.self] = newValue }
    }
}
