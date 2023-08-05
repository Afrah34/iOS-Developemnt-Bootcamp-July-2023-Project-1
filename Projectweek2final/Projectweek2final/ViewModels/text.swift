//
//  text.swift
//  Projectweek2final
//
//  Created by Afrah Faisal on 20/01/1445 AH.
//

import Foundation
import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
