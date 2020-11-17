//
//  Binding-OnChange.swift
//  Portfolio
//
//  Created by Sergey Timoshin on 17.11.2020.
//

import Foundation
import SwiftUI

extension Binding {

    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler()
            }
        )
    }
}
